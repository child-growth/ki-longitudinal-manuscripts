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

agecat      studyid                    country                        single    n_cell       n
----------  -------------------------  -----------------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0            215     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              0     215
Birth       ki0047075b-MAL-ED          BRAZIL                         0             54      62
Birth       ki0047075b-MAL-ED          BRAZIL                         1              8      62
Birth       ki0047075b-MAL-ED          INDIA                          0             45      45
Birth       ki0047075b-MAL-ED          INDIA                          1              0      45
Birth       ki0047075b-MAL-ED          NEPAL                          0             26      26
Birth       ki0047075b-MAL-ED          NEPAL                          1              0      26
Birth       ki0047075b-MAL-ED          PERU                           0            205     228
Birth       ki0047075b-MAL-ED          PERU                           1             23     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0             63     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1             57     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            112     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3     115
Birth       ki1119695-PROBIT           BELARUS                        0          13291   13830
Birth       ki1119695-PROBIT           BELARUS                        1            539   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0          12065   12864
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1            799   12864
Birth       ki1135781-COHORTS          GUATEMALA                      0            654     691
Birth       ki1135781-COHORTS          GUATEMALA                      1             37     691
Birth       ki1135781-COHORTS          INDIA                          0           4456    4463
Birth       ki1135781-COHORTS          INDIA                          1              7    4463
Birth       ki1135781-COHORTS          PHILIPPINES                    0           2789    2860
Birth       ki1135781-COHORTS          PHILIPPINES                    1             71    2860
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0           2388    2393
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              5    2393
6 months    ki0047075b-MAL-ED          BANGLADESH                     0            241     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0            179     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1             30     209
6 months    ki0047075b-MAL-ED          INDIA                          0            234     234
6 months    ki0047075b-MAL-ED          INDIA                          1              0     234
6 months    ki0047075b-MAL-ED          NEPAL                          0            236     236
6 months    ki0047075b-MAL-ED          NEPAL                          1              0     236
6 months    ki0047075b-MAL-ED          PERU                           0            240     273
6 months    ki0047075b-MAL-ED          PERU                           1             33     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0            140     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1            114     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            239     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              8     247
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1834    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            178    2012
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0            248     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1             29     277
6 months    ki1119695-PROBIT           BELARUS                        0          15115   15758
6 months    ki1119695-PROBIT           BELARUS                        1            643   15758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0           7971    8474
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            503    8474
6 months    ki1135781-COHORTS          GUATEMALA                      0            827     894
6 months    ki1135781-COHORTS          GUATEMALA                      1             67     894
6 months    ki1135781-COHORTS          INDIA                          0           4955    4964
6 months    ki1135781-COHORTS          INDIA                          1              9    4964
6 months    ki1135781-COHORTS          PHILIPPINES                    0           2606    2674
6 months    ki1135781-COHORTS          PHILIPPINES                    1             68    2674
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0           4816    4824
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              8    4824
24 months   ki0047075b-MAL-ED          BANGLADESH                     0            212     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0            148     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1             21     169
24 months   ki0047075b-MAL-ED          INDIA                          0            225     225
24 months   ki0047075b-MAL-ED          INDIA                          1              0     225
24 months   ki0047075b-MAL-ED          NEPAL                          0            228     228
24 months   ki0047075b-MAL-ED          NEPAL                          1              0     228
24 months   ki0047075b-MAL-ED          PERU                           0            176     201
24 months   ki0047075b-MAL-ED          PERU                           1             25     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0            131     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1            107     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            208     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6     214
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0       6
24 months   ki1119695-PROBIT           BELARUS                        0           3830    3972
24 months   ki1119695-PROBIT           BELARUS                        1            142    3972
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            388     432
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             44     432
24 months   ki1135781-COHORTS          GUATEMALA                      0            932    1021
24 months   ki1135781-COHORTS          GUATEMALA                      1             89    1021
24 months   ki1135781-COHORTS          INDIA                          0           3717    3726
24 months   ki1135781-COHORTS          INDIA                          1              9    3726
24 months   ki1135781-COHORTS          PHILIPPINES                    0           2361    2420
24 months   ki1135781-COHORTS          PHILIPPINES                    1             59    2420
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           4721    4727
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              6    4727


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
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




# Results Detail

## Results Plots
![](/tmp/baaeb81c-9efc-4174-9f5b-e042c04060d9/d101550a-d9a1-4eb0-b491-995dd388a387/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/baaeb81c-9efc-4174-9f5b-e042c04060d9/d101550a-d9a1-4eb0-b491-995dd388a387/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/baaeb81c-9efc-4174-9f5b-e042c04060d9/d101550a-d9a1-4eb0-b491-995dd388a387/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.3496296    0.0129664    0.6862928
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.7625000   -0.0474852    1.5724852
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.0288330   -0.1695377    0.1118717
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                 0.1899647   -0.1166388    0.4965682
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0163446   -0.3012874    0.3339766
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.4827183   -0.7697840   -0.1956526
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -1.1356866   -1.3487990   -0.9225743
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                -1.0672791   -1.2106638   -0.9238944
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.5098215   -0.5366401   -0.4830030
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.6082454   -0.7290753   -0.4874155
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                -1.0689386   -1.1786900   -0.9591871
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.8380750   -1.3073837   -0.3687662
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.9764901   -1.0121932   -0.9407871
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.9871429   -1.0249916   -0.9492941
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.7373751   -0.7915489   -0.6832013
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.3046765    0.2522779    0.3570751
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.6889322   -0.7427226   -0.6351417
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.6340000   -0.6780019   -0.5899981
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 1.0037280    0.8278944    1.1795617
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.9639066    0.4704555    1.4573578
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 1.0654602    0.9384850    1.1924353
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                 0.9472107    0.5266701    1.3677513
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.5553054    0.2269333    0.8836774
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.5082751    0.3118120    0.7047383
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5343375    0.4035792    0.6650959
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5925000   -0.4882365    1.6732365
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0795558    0.0248282    0.1342835
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0917158   -0.1078789    0.2913106
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0350545   -0.1563710    0.0862619
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.3230072   -0.6897233    0.0437090
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.5751599    0.5154284    0.6348913
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.4456426    0.3752123    0.5160729
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.3168141    0.2901561    0.3434720
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1749580    0.0622356    0.2876804
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1654234    0.0890706    0.2417762
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.2798879   -0.2192857    0.7790614
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.7098951   -0.7430287   -0.6767615
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -1.0322222   -1.0700926   -0.9943519
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.2909949   -0.3413895   -0.2406004
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.5423383   -0.5904851   -0.4941916
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.3903686   -0.4286532   -0.3520840
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.4493750   -0.4619543   -0.4367957
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.4582665    0.2433519    0.6731811
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.6751518   -0.1260972    1.4764008
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.1017169   -0.0257834    0.2292173
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.1837152   -0.2125720    0.5800024
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.4357910    0.2027868    0.6687953
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.5538044    0.3618271    0.7457817
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0763782   -0.0483716    0.2011280
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.6933333   -1.6135001    0.2268334
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.6975395    0.5810966    0.8139824
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.2837010    0.0580033    0.5093988
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -1.2024239   -1.3100635   -1.0947843
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.9185836   -1.1294107   -0.7077565
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.2552688   -0.3129889   -0.1975486
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.5725306   -0.8989587   -0.2461026
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.6594835   -0.6934635   -0.6255034
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.6300000   -0.6887577   -0.5712423
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.6090433   -0.6521037   -0.5659829
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.1224535   -0.1598281   -0.0850789
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.2245351   -1.2573027   -1.1917674
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.7950000   -0.8090439   -0.7809561


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4029032    0.0896793    0.7161272
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1925833   -0.4053570    0.0201904
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1448633   -1.3544229   -0.9353037
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5148609   -0.5407634   -0.4889583
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0552243   -1.1617873   -0.9486614
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9765068   -1.0113301   -0.9416835
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7377902   -0.7844819   -0.6910986
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.6888174   -0.7412201   -0.6364147
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0528816    0.9313005    1.1744626
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5421785    0.3900443    0.6943126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0797577    0.0268998    0.1326156
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0568833   -0.1722874    0.0585208
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5792439    0.5193388    0.6391490
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3108992    0.2851818    0.3366167
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1920134    0.1173734    0.2666534
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.7104795   -0.7428008   -0.6781581
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2936948   -0.3352840   -0.2521057
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3904664   -0.4277855   -0.3531473
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4090301    0.2879441    0.5301161
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6874295    0.5756922    0.7991668
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1797222   -1.2787189   -1.0807256
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2796964   -0.3351582   -0.2242346
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6594122   -0.6925753   -0.6262491
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6100579   -0.6471813   -0.5729344
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2239898   -1.2559235   -1.1920562


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.4128704   -0.4642944    1.2900352
Birth       ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    0                  0.2187976   -0.1187021    0.5562974
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.4990629   -0.9312980   -0.0668278
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                  0.0684076   -0.1200376    0.2568528
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0984238   -0.2221481    0.0253004
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                  0.2308636   -0.2514235    0.7131508
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                 -0.0106527   -0.0626838    0.0413784
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                  1.0420516    0.9670358    1.1170673
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0549322   -0.0162654    0.1261297
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0398214   -0.5666226    0.4869798
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.1182495   -0.5574822    0.3209832
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0470303   -0.4277296    0.3336691
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0581625   -1.0304555    1.1467805
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0121600   -0.1949511    0.2192711
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -0.2879526   -0.6741094    0.0982041
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 -0.1295173   -0.2086608   -0.0503738
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.1418561   -0.2575185   -0.0261937
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  0.1144645   -0.3908795    0.6198084
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.3223272   -0.3726461   -0.2720082
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.2513434   -0.3208665   -0.1818203
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0590064   -0.0997170   -0.0182959
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.2168853   -0.6240364    1.0578069
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0819983   -0.3292852    0.4932817
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.1180134   -0.1844250    0.4204517
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.7697115   -1.6982961    0.1588731
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.4138385   -0.6790720   -0.1486049
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.2838403    0.0469513    0.5207293
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.3172618   -0.6489024    0.0143787
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                  0.0294835   -0.0383923    0.0973592
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.4865898    0.4299919    0.5431877
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.4295351    0.3935671    0.4655030


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0532736   -0.0651185    0.1716657
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.0231846   -0.0870982    0.0407291
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.2089279   -0.4293718    0.0115160
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -0.0091767   -0.0201389    0.0017855
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0050393   -0.0121387    0.0020600
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0137143   -0.0113089    0.0387374
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.0000167   -0.0013175    0.0012841
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0004151   -0.0250978    0.0242675
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0001148   -0.0016450    0.0018746
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0316507   -0.1037015    0.0404001
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0125786   -0.0631144    0.0379572
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0131269   -0.2811929    0.2549391
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0018838   -0.0333985    0.0371662
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0002019   -0.0178169    0.0182206
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0218287   -0.0632256    0.0195681
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0040840   -0.0066697    0.0148377
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0059149   -0.0127724    0.0009427
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0265900    0.0018603    0.0513197
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0005844   -0.0018989    0.0007302
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0026999   -0.0289070    0.0235073
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0000979   -0.0011182    0.0009225
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0043567   -0.0942661    0.1029796
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0094812   -0.0403163    0.0592788
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0267609   -0.2181470    0.1646252
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0215807   -0.0527095    0.0095481
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0101100   -0.0225015    0.0022815
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0227017   -0.0019592    0.0473626
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0244276   -0.0472629   -0.0015922
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0000712   -0.0016263    0.0017687
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0010146   -0.0215180    0.0194888
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0005452   -0.0004095    0.0014999
