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

**Outcome Variable:** swasted

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

agecat      studyid          country                        single    swasted   n_cell       n
----------  ---------------  -----------------------------  -------  --------  -------  ------
Birth       COHORTS          GUATEMALA                      0               0      602     691
Birth       COHORTS          GUATEMALA                      0               1       52     691
Birth       COHORTS          GUATEMALA                      1               0       35     691
Birth       COHORTS          GUATEMALA                      1               1        2     691
Birth       COHORTS          INDIA                          0               0     4242    4463
Birth       COHORTS          INDIA                          0               1      214    4463
Birth       COHORTS          INDIA                          1               0        7    4463
Birth       COHORTS          INDIA                          1               1        0    4463
Birth       COHORTS          PHILIPPINES                    0               0     2674    2860
Birth       COHORTS          PHILIPPINES                    0               1      115    2860
Birth       COHORTS          PHILIPPINES                    1               0       66    2860
Birth       COHORTS          PHILIPPINES                    1               1        5    2860
Birth       JiVitA-4         BANGLADESH                     0               0     2357    2393
Birth       JiVitA-4         BANGLADESH                     0               1       31    2393
Birth       JiVitA-4         BANGLADESH                     1               0        5    2393
Birth       JiVitA-4         BANGLADESH                     1               1        0    2393
Birth       MAL-ED           BANGLADESH                     0               0      207     215
Birth       MAL-ED           BANGLADESH                     0               1        8     215
Birth       MAL-ED           BANGLADESH                     1               0        0     215
Birth       MAL-ED           BANGLADESH                     1               1        0     215
Birth       MAL-ED           BRAZIL                         0               0       54      62
Birth       MAL-ED           BRAZIL                         0               1        0      62
Birth       MAL-ED           BRAZIL                         1               0        8      62
Birth       MAL-ED           BRAZIL                         1               1        0      62
Birth       MAL-ED           INDIA                          0               0       45      45
Birth       MAL-ED           INDIA                          0               1        0      45
Birth       MAL-ED           INDIA                          1               0        0      45
Birth       MAL-ED           INDIA                          1               1        0      45
Birth       MAL-ED           NEPAL                          0               0       25      26
Birth       MAL-ED           NEPAL                          0               1        1      26
Birth       MAL-ED           NEPAL                          1               0        0      26
Birth       MAL-ED           NEPAL                          1               1        0      26
Birth       MAL-ED           PERU                           0               0      205     228
Birth       MAL-ED           PERU                           0               1        0     228
Birth       MAL-ED           PERU                           1               0       23     228
Birth       MAL-ED           PERU                           1               1        0     228
Birth       MAL-ED           SOUTH AFRICA                   0               0       63     120
Birth       MAL-ED           SOUTH AFRICA                   0               1        0     120
Birth       MAL-ED           SOUTH AFRICA                   1               0       57     120
Birth       MAL-ED           SOUTH AFRICA                   1               1        0     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               0      112     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        3     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        0     115
Birth       PROBIT           BELARUS                        0               0    12403   13817
Birth       PROBIT           BELARUS                        0               1      874   13817
Birth       PROBIT           BELARUS                        1               0      495   13817
Birth       PROBIT           BELARUS                        1               1       45   13817
Birth       ZVITAMBO         ZIMBABWE                       0               0    11340   12864
Birth       ZVITAMBO         ZIMBABWE                       0               1      725   12864
Birth       ZVITAMBO         ZIMBABWE                       1               0      735   12864
Birth       ZVITAMBO         ZIMBABWE                       1               1       64   12864
6 months    COHORTS          GUATEMALA                      0               0      822     894
6 months    COHORTS          GUATEMALA                      0               1        5     894
6 months    COHORTS          GUATEMALA                      1               0       66     894
6 months    COHORTS          GUATEMALA                      1               1        1     894
6 months    COHORTS          INDIA                          0               0     4802    4964
6 months    COHORTS          INDIA                          0               1      153    4964
6 months    COHORTS          INDIA                          1               0        9    4964
6 months    COHORTS          INDIA                          1               1        0    4964
6 months    COHORTS          PHILIPPINES                    0               0     2573    2674
6 months    COHORTS          PHILIPPINES                    0               1       33    2674
6 months    COHORTS          PHILIPPINES                    1               0       67    2674
6 months    COHORTS          PHILIPPINES                    1               1        1    2674
6 months    Guatemala BSC    GUATEMALA                      0               0      248     277
6 months    Guatemala BSC    GUATEMALA                      0               1        0     277
6 months    Guatemala BSC    GUATEMALA                      1               0       29     277
6 months    Guatemala BSC    GUATEMALA                      1               1        0     277
6 months    JiVitA-4         BANGLADESH                     0               0     4783    4824
6 months    JiVitA-4         BANGLADESH                     0               1       33    4824
6 months    JiVitA-4         BANGLADESH                     1               0        8    4824
6 months    JiVitA-4         BANGLADESH                     1               1        0    4824
6 months    MAL-ED           BANGLADESH                     0               0      239     241
6 months    MAL-ED           BANGLADESH                     0               1        2     241
6 months    MAL-ED           BANGLADESH                     1               0        0     241
6 months    MAL-ED           BANGLADESH                     1               1        0     241
6 months    MAL-ED           BRAZIL                         0               0      179     209
6 months    MAL-ED           BRAZIL                         0               1        0     209
6 months    MAL-ED           BRAZIL                         1               0       30     209
6 months    MAL-ED           BRAZIL                         1               1        0     209
6 months    MAL-ED           INDIA                          0               0      228     234
6 months    MAL-ED           INDIA                          0               1        6     234
6 months    MAL-ED           INDIA                          1               0        0     234
6 months    MAL-ED           INDIA                          1               1        0     234
6 months    MAL-ED           NEPAL                          0               0      236     236
6 months    MAL-ED           NEPAL                          0               1        0     236
6 months    MAL-ED           NEPAL                          1               0        0     236
6 months    MAL-ED           NEPAL                          1               1        0     236
6 months    MAL-ED           PERU                           0               0      240     273
6 months    MAL-ED           PERU                           0               1        0     273
6 months    MAL-ED           PERU                           1               0       33     273
6 months    MAL-ED           PERU                           1               1        0     273
6 months    MAL-ED           SOUTH AFRICA                   0               0      138     254
6 months    MAL-ED           SOUTH AFRICA                   0               1        2     254
6 months    MAL-ED           SOUTH AFRICA                   1               0      113     254
6 months    MAL-ED           SOUTH AFRICA                   1               1        1     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               0      239     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        8     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        0     247
6 months    PROBIT           BELARUS                        0               0    15105   15757
6 months    PROBIT           BELARUS                        0               1        9   15757
6 months    PROBIT           BELARUS                        1               0      643   15757
6 months    PROBIT           BELARUS                        1               1        0   15757
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1825    2012
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        9    2012
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      175    2012
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        3    2012
6 months    ZVITAMBO         ZIMBABWE                       0               0     7898    8474
6 months    ZVITAMBO         ZIMBABWE                       0               1       73    8474
6 months    ZVITAMBO         ZIMBABWE                       1               0      498    8474
6 months    ZVITAMBO         ZIMBABWE                       1               1        5    8474
24 months   COHORTS          GUATEMALA                      0               0      928    1021
24 months   COHORTS          GUATEMALA                      0               1        4    1021
24 months   COHORTS          GUATEMALA                      1               0       89    1021
24 months   COHORTS          GUATEMALA                      1               1        0    1021
24 months   COHORTS          INDIA                          0               0     3676    3726
24 months   COHORTS          INDIA                          0               1       41    3726
24 months   COHORTS          INDIA                          1               0        9    3726
24 months   COHORTS          INDIA                          1               1        0    3726
24 months   COHORTS          PHILIPPINES                    0               0     2336    2420
24 months   COHORTS          PHILIPPINES                    0               1       25    2420
24 months   COHORTS          PHILIPPINES                    1               0       59    2420
24 months   COHORTS          PHILIPPINES                    1               1        0    2420
24 months   JiVitA-4         BANGLADESH                     0               0     4592    4727
24 months   JiVitA-4         BANGLADESH                     0               1      129    4727
24 months   JiVitA-4         BANGLADESH                     1               0        6    4727
24 months   JiVitA-4         BANGLADESH                     1               1        0    4727
24 months   MAL-ED           BANGLADESH                     0               0      212     212
24 months   MAL-ED           BANGLADESH                     0               1        0     212
24 months   MAL-ED           BANGLADESH                     1               0        0     212
24 months   MAL-ED           BANGLADESH                     1               1        0     212
24 months   MAL-ED           BRAZIL                         0               0      148     169
24 months   MAL-ED           BRAZIL                         0               1        0     169
24 months   MAL-ED           BRAZIL                         1               0       20     169
24 months   MAL-ED           BRAZIL                         1               1        1     169
24 months   MAL-ED           INDIA                          0               0      223     225
24 months   MAL-ED           INDIA                          0               1        2     225
24 months   MAL-ED           INDIA                          1               0        0     225
24 months   MAL-ED           INDIA                          1               1        0     225
24 months   MAL-ED           NEPAL                          0               0      228     228
24 months   MAL-ED           NEPAL                          0               1        0     228
24 months   MAL-ED           NEPAL                          1               0        0     228
24 months   MAL-ED           NEPAL                          1               1        0     228
24 months   MAL-ED           PERU                           0               0      174     201
24 months   MAL-ED           PERU                           0               1        2     201
24 months   MAL-ED           PERU                           1               0       25     201
24 months   MAL-ED           PERU                           1               1        0     201
24 months   MAL-ED           SOUTH AFRICA                   0               0      131     238
24 months   MAL-ED           SOUTH AFRICA                   0               1        0     238
24 months   MAL-ED           SOUTH AFRICA                   1               0      107     238
24 months   MAL-ED           SOUTH AFRICA                   1               1        0     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               0      208     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        6     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        0     214
24 months   PROBIT           BELARUS                        0               0     3821    3970
24 months   PROBIT           BELARUS                        0               1        7    3970
24 months   PROBIT           BELARUS                        1               0      142    3970
24 months   PROBIT           BELARUS                        1               1        0    3970
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ZVITAMBO         ZIMBABWE                       0               0      358     432
24 months   ZVITAMBO         ZIMBABWE                       0               1       30     432
24 months   ZVITAMBO         ZIMBABWE                       1               0       43     432
24 months   ZVITAMBO         ZIMBABWE                       1               1        1     432


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

* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/6e324d38-f457-450f-bd23-1f85deeaee99/5000f85a-9a2c-4f1f-9030-aef6cea02dac/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6e324d38-f457-450f-bd23-1f85deeaee99/5000f85a-9a2c-4f1f-9030-aef6cea02dac/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6e324d38-f457-450f-bd23-1f85deeaee99/5000f85a-9a2c-4f1f-9030-aef6cea02dac/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6e324d38-f457-450f-bd23-1f85deeaee99/5000f85a-9a2c-4f1f-9030-aef6cea02dac/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat     studyid    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ---------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth      COHORTS    PHILIPPINES   0                    NA                0.0412334   0.0338517   0.0486152
Birth      COHORTS    PHILIPPINES   1                    NA                0.0704225   0.0113146   0.1295305
Birth      PROBIT     BELARUS       0                    NA                0.0657118   0.0322031   0.0992206
Birth      PROBIT     BELARUS       1                    NA                0.0874501   0.0509676   0.1239326
Birth      ZVITAMBO   ZIMBABWE      0                    NA                0.0603139   0.0560539   0.0645740
Birth      ZVITAMBO   ZIMBABWE      1                    NA                0.0799179   0.0602207   0.0996152
6 months   ZVITAMBO   ZIMBABWE      0                    NA                0.0091582   0.0070669   0.0112495
6 months   ZVITAMBO   ZIMBABWE      1                    NA                0.0099404   0.0012703   0.0186104


### Parameter: E(Y)


agecat     studyid    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ---------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth      COHORTS    PHILIPPINES   NA                   NA                0.0419580   0.0346088   0.0493073
Birth      PROBIT     BELARUS       NA                   NA                0.0665123   0.0333611   0.0996634
Birth      ZVITAMBO   ZIMBABWE      NA                   NA                0.0613340   0.0571874   0.0654805
6 months   ZVITAMBO   ZIMBABWE      NA                   NA                0.0092046   0.0071712   0.0112380


### Parameter: RR


agecat     studyid    country       intervention_level   baseline_level    estimate    ci_lower   ci_upper
---------  ---------  ------------  -------------------  ---------------  ---------  ----------  ---------
Birth      COHORTS    PHILIPPINES   0                    0                 1.000000   1.0000000   1.000000
Birth      COHORTS    PHILIPPINES   1                    0                 1.707900   0.7240114   4.028833
Birth      PROBIT     BELARUS       0                    0                 1.000000   1.0000000   1.000000
Birth      PROBIT     BELARUS       1                    0                 1.330812   0.9223471   1.920166
Birth      ZVITAMBO   ZIMBABWE      0                    0                 1.000000   1.0000000   1.000000
Birth      ZVITAMBO   ZIMBABWE      1                    0                 1.325033   1.0253478   1.712310
6 months   ZVITAMBO   ZIMBABWE      0                    0                 1.000000   1.0000000   1.000000
6 months   ZVITAMBO   ZIMBABWE      1                    0                 1.085405   0.4405852   2.673954


### Parameter: PAR


agecat     studyid    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------  ---------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth      COHORTS    PHILIPPINES   0                    NA                0.0007246   -0.0007738   0.0022231
Birth      PROBIT     BELARUS       0                    NA                0.0008004   -0.0002311   0.0018320
Birth      ZVITAMBO   ZIMBABWE      0                    NA                0.0010200   -0.0001992   0.0022392
6 months   ZVITAMBO   ZIMBABWE      0                    NA                0.0000464   -0.0004830   0.0005758


### Parameter: PAF


agecat     studyid    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------  ---------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth      COHORTS    PHILIPPINES   0                    NA                0.0172702   -0.0189809   0.0522317
Birth      PROBIT     BELARUS       0                    NA                0.0120342   -0.0065352   0.0302610
Birth      ZVITAMBO   ZIMBABWE      0                    NA                0.0166309   -0.0034214   0.0362825
6 months   ZVITAMBO   ZIMBABWE      0                    NA                0.0050439   -0.0541556   0.0609189
