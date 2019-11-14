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
![](/tmp/00c56e1d-0017-42cb-9de0-29737d39179f/7d7d07e3-80a4-4551-90dc-92640fd56036/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/00c56e1d-0017-42cb-9de0-29737d39179f/7d7d07e3-80a4-4551-90dc-92640fd56036/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/00c56e1d-0017-42cb-9de0-29737d39179f/7d7d07e3-80a4-4551-90dc-92640fd56036/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.3496296    0.0129664    0.6862928
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.7625000   -0.0474852    1.5724852
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.0268675   -0.1691164    0.1153814
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                 0.2099812   -0.1105995    0.5305620
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0042269   -0.3225348    0.3309885
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.4880438   -0.7746811   -0.2014064
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -1.1340703   -1.3467771   -0.9213634
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                -1.0543331   -1.1981805   -0.9104858
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.5095465   -0.5363515   -0.4827414
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.5940642   -0.7144357   -0.4736928
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                -1.0693322   -1.1790562   -0.9596081
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.9754235   -1.4569647   -0.4938824
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.9764901   -1.0121932   -0.9407871
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.9871429   -1.0249916   -0.9492941
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.7372579   -0.7924291   -0.6820867
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0773314   -0.1437884   -0.0108743
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.6889322   -0.7427226   -0.6351417
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.6340000   -0.6780019   -0.5899981
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 1.0025549    0.8261401    1.1789698
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.8192390    0.3279318    1.3105461
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 1.0723468    0.9455643    1.1991293
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                 0.9444026    0.4926717    1.3961335
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.5906174    0.2927001    0.8885347
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.4736295    0.2553630    0.6918960
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5343375    0.4035792    0.6650959
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5925000   -0.4882365    1.6732365
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0802173    0.0254331    0.1350016
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0260460   -0.1774384    0.2295305
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0315047   -0.1528202    0.0898107
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.3086965   -0.6908589    0.0734658
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.5749507    0.5158464    0.6340551
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.4390415    0.3697589    0.5083242
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.3169253    0.2903691    0.3434815
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1661943    0.0523350    0.2800536
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1672559    0.0910378    0.2434739
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1859888   -0.3900646    0.7620421
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.7098951   -0.7430287   -0.6767615
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -1.0322222   -1.0700926   -0.9943519
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.2913002   -0.3404647   -0.2421356
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.4512531   -0.4992089   -0.4032973
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.3903686   -0.4286532   -0.3520840
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.4493750   -0.4619543   -0.4367957
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.4661000    0.2509701    0.6812298
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.5224819   -0.2673358    1.3122996
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.1197637   -0.0042652    0.2437925
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.1376138   -0.2700746    0.5453022
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.4411267    0.2054860    0.6767674
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.3930416    0.2112394    0.5748439
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0755048   -0.0493112    0.2003208
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.6933333   -1.6135001    0.2268334
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.6951616    0.5780749    0.8122483
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.2885520    0.0677395    0.5093646
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -1.2024734   -1.3095013   -1.0954454
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.9745617   -1.1854626   -0.7636608
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.2527155   -0.3100691   -0.1953619
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.5584360   -0.8442119   -0.2726602
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.6594835   -0.6934635   -0.6255034
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.6300000   -0.6887577   -0.5712423
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.6085174   -0.6525551   -0.5644796
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0068485   -0.0431566    0.0294596
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
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0568987    0.9352990    1.1784983
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5427231    0.3906363    0.6948099
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0797577    0.0268998    0.1326156
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0568833   -0.1722874    0.0585208
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5792439    0.5193388    0.6391490
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3108992    0.2851818    0.3366167
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1920134    0.1173734    0.2666534
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.7104795   -0.7428008   -0.6781581
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2936948   -0.3352840   -0.2521057
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3904664   -0.4277855   -0.3531473
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4592308    0.2528453    0.6656163
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1204478    0.0005049    0.2403906
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4148529    0.2940577    0.5356481
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0539486   -0.0712465    0.1791437
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
Birth       ki0047075b-MAL-ED          PERU                           1                    0                  0.2368487   -0.1142472    0.5879446
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.4922707   -0.9303498   -0.0541915
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                  0.0797371   -0.1139290    0.2734033
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0845178   -0.2077794    0.0387439
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0939086   -0.3999967    0.5878140
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                 -0.0106527   -0.0626838    0.0413784
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.6599266    0.5737506    0.7461025
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0549322   -0.0162654    0.1261297
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.1833160   -0.7063887    0.3397568
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.1279442   -0.5974423    0.3415539
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.1169879   -0.4856096    0.2516338
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0581625   -1.0304555    1.1467805
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0541713   -0.2651023    0.1567597
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -0.2771918   -0.6783652    0.1239816
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 -0.1359092   -0.2139544   -0.0578640
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.1507310   -0.2674724   -0.0339896
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0187329   -0.5630191    0.6004849
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.3223272   -0.3726461   -0.2720082
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.1599529   -0.2286481   -0.0912577
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0590064   -0.0997170   -0.0182959
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0563819   -0.7674397    0.8802036
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0178501   -0.4044545    0.4401547
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0480851   -0.3455757    0.2494055
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.7688381   -1.6974316    0.1597554
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.4066096   -0.6674283   -0.1457908
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.2279117   -0.0080772    0.4639005
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.3057205   -0.5972902   -0.0141509
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                  0.0294835   -0.0383923    0.0973592
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.6016688    0.5448922    0.6584454
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.4295351    0.3935671    0.4655030


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0532736   -0.0651185    0.1716657
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.0251501   -0.0914805    0.0411804
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.1968102   -0.4207295    0.0271091
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -0.0107931   -0.0215369   -0.0000493
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0053144   -0.0123945    0.0017657
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0141078   -0.0108596    0.0390753
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.0000167   -0.0013175    0.0012841
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0005323   -0.0265942    0.0255296
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0001148   -0.0016450    0.0018746
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0308324   -0.1027080    0.0410431
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0154481   -0.0667270    0.0358308
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0478943   -0.2863101    0.1905215
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0018838   -0.0333985    0.0371662
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0004596   -0.0185725    0.0176533
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0253785   -0.0670348    0.0162777
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0042932   -0.0041404    0.0127267
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0060261   -0.0127686    0.0007164
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0247576   -0.0000983    0.0496134
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0005844   -0.0018989    0.0007302
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0023947   -0.0265637    0.0217744
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0000979   -0.0011182    0.0009225
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0068692   -0.1021156    0.0883772
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0006841   -0.0503152    0.0516834
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0262738   -0.2197618    0.1672143
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0215562   -0.0526746    0.0095622
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0077321   -0.0221975    0.0067333
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0227512   -0.0014416    0.0469440
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0269809   -0.0488514   -0.0051103
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0000712   -0.0016263    0.0017687
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0015405   -0.0240084    0.0209274
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0005452   -0.0004095    0.0014999
