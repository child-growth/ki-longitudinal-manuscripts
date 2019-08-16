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
* W_fage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
* delta_W_fage
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
Birth       ki0047075b-MAL-ED          BANGLADESH                     0            241     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              0     241
Birth       ki0047075b-MAL-ED          BRAZIL                         0            159     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1             24     183
Birth       ki0047075b-MAL-ED          INDIA                          0            202     202
Birth       ki0047075b-MAL-ED          INDIA                          1              0     202
Birth       ki0047075b-MAL-ED          NEPAL                          0            168     168
Birth       ki0047075b-MAL-ED          NEPAL                          1              0     168
Birth       ki0047075b-MAL-ED          PERU                           0            247     279
Birth       ki0047075b-MAL-ED          PERU                           1             32     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0            145     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1            113     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            112     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6     118
Birth       ki1119695-PROBIT           BELARUS                        0          13286   13824
Birth       ki1119695-PROBIT           BELARUS                        1            538   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0          12064   12863
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1            799   12863
Birth       ki1135781-COHORTS          GUATEMALA                      0            654     691
Birth       ki1135781-COHORTS          GUATEMALA                      1             37     691
Birth       ki1135781-COHORTS          INDIA                          0           4456    4463
Birth       ki1135781-COHORTS          INDIA                          1              7    4463
Birth       ki1135781-COHORTS          PHILIPPINES                    0           2789    2860
Birth       ki1135781-COHORTS          PHILIPPINES                    1             71    2860
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
6 months    ki1119695-PROBIT           BELARUS                        0          15114   15757
6 months    ki1119695-PROBIT           BELARUS                        1            643   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0           7746    8234
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            488    8234
6 months    ki1135781-COHORTS          GUATEMALA                      0            827     894
6 months    ki1135781-COHORTS          GUATEMALA                      1             67     894
6 months    ki1135781-COHORTS          INDIA                          0           4955    4964
6 months    ki1135781-COHORTS          INDIA                          1              9    4964
6 months    ki1135781-COHORTS          PHILIPPINES                    0           2606    2674
6 months    ki1135781-COHORTS          PHILIPPINES                    1             68    2674
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
24 months   ki1119695-PROBIT           BELARUS                        0           3829    3971
24 months   ki1119695-PROBIT           BELARUS                        1            142    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            379     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             43     422
24 months   ki1135781-COHORTS          GUATEMALA                      0            932    1021
24 months   ki1135781-COHORTS          GUATEMALA                      1             89    1021
24 months   ki1135781-COHORTS          INDIA                          0           3717    3726
24 months   ki1135781-COHORTS          INDIA                          1              9    3726
24 months   ki1135781-COHORTS          PHILIPPINES                    0           2361    2420
24 months   ki1135781-COHORTS          PHILIPPINES                    1             59    2420


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
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




# Results Detail

## Results Plots
![](/tmp/2ddf3805-7764-494b-aebf-f95fd21465e8/247cdfda-a398-4bc0-ae73-d5702c090479/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2ddf3805-7764-494b-aebf-f95fd21465e8/247cdfda-a398-4bc0-ae73-d5702c090479/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2ddf3805-7764-494b-aebf-f95fd21465e8/247cdfda-a398-4bc0-ae73-d5702c090479/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.3920461    0.2010487    0.5830435
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.5387703    0.0627197    1.0148209
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.0640523   -0.1786641    0.0505595
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -0.1385297   -0.5397318    0.2626724
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0806936   -0.2001438    0.3615310
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.2663680   -0.5009728   -0.0317632
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.7790179    0.5756945    0.9823412
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.0583333    0.3116322    1.8050345
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -1.1387731   -1.3518436   -0.9257026
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                -1.0347572   -1.1428764   -0.9266380
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.5096042   -0.5364191   -0.4827893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.6058673   -0.7259217   -0.4858128
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                -1.0657937   -1.1754627   -0.9561246
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.9989459   -1.4910381   -0.5068538
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.9764901   -1.0121932   -0.9407871
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.9871429   -1.0249916   -0.9492941
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.7373866   -0.7950462   -0.6797269
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2491248    0.1634795    0.3347701
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 1.0067984    0.8308120    1.1827849
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.9123177    0.4313184    1.3933170
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 1.0634286    0.9366802    1.1901770
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                 1.0097245    0.5767262    1.4427227
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.5972395    0.2905498    0.9039292
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.8554136    0.5741135    1.1367137
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5145258    0.3853273    0.6437243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5925000   -0.4882365    1.6732365
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0801295    0.0254073    0.1348518
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0639081   -0.1372601    0.2650763
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0320919   -0.1534753    0.0892914
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.2972700   -0.6767130    0.0821729
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.5758242    0.5157772    0.6358712
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.4499259    0.3801399    0.5197120
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.3099125    0.2828560    0.3369690
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1495530    0.0318993    0.2672068
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1731947    0.0958504    0.2505389
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.2398397   -0.3148648    0.7945442
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.7098951   -0.7430287   -0.6767615
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -1.0322222   -1.0700926   -0.9943519
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.2942640   -0.3450800   -0.2434480
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0350327   -0.0051953    0.0752608
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.4469037    0.2339762    0.6598313
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.3034585   -0.4905664    1.0974834
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.1099729   -0.0145451    0.2344908
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.2001577   -0.2017872    0.6021026
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.4615824    0.2237913    0.6993736
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.6775972    0.4286372    0.9265572
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0715385   -0.0529948    0.1960717
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.6933333   -1.6135001    0.2268334
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.6915812    0.5741777    0.8089846
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.2463184    0.0490600    0.4435767
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -1.1994121   -1.3081610   -1.0906633
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.9977993   -1.2082277   -0.7873709
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.2607574   -0.3190246   -0.2024902
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.5834527   -0.8947809   -0.2721244
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.6594835   -0.6934635   -0.6255034
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.6300000   -0.6887577   -0.5712423
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.6108984   -0.6504835   -0.5713132
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.4159778   -0.4469788   -0.3849768


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4038798    0.2296279    0.5781316
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0562791   -0.2000837    0.0875255
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7932203    0.5962220    0.9902187
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1463469   -1.3562674   -0.9364264
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5145122   -0.5404077   -0.4886167
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0552243   -1.1617873   -0.9486614
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9765068   -1.0113301   -0.9416835
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7377902   -0.7844819   -0.6910986
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5170513    0.3872178    0.6468847
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0797577    0.0268998    0.1326156
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0568833   -0.1722874    0.0585208
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3050103    0.2788985    0.3311222
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1920134    0.1173734    0.2666534
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.7104795   -0.7428008   -0.6781581
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2936948   -0.3352840   -0.2521057
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0500935   -0.0748234    0.1750103
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6863435    0.5745700    0.7981170
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1781043   -1.2781256   -1.0780830
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2796964   -0.3351582   -0.2242346
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6594122   -0.6925753   -0.6262491
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6100579   -0.6471813   -0.5729344


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.1467242   -0.3656333    0.6590817
Birth       ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    0                 -0.0744774   -0.4918378    0.3428829
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.3470616   -0.7143604    0.0202372
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.2793155   -0.4945728    1.0532037
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                  0.1040159   -0.0831794    0.2912112
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0962630   -0.2192378    0.0267117
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0668477   -0.4366522    0.5703477
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                 -0.0106527   -0.0626838    0.0413784
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.9865114    0.8835455    1.0894773
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0944807   -0.6085268    0.4195653
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.0537041   -0.5044289    0.3970206
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.2581741   -0.1600499    0.6763981
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0779742   -1.0104576    1.1664060
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0162214   -0.2249823    0.1925395
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -0.2651781   -0.6635983    0.1332420
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 -0.1258982   -0.2016442   -0.0501522
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.1603594   -0.2809030   -0.0398159
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0666451   -0.4935226    0.6268127
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.3223272   -0.3726461   -0.2720082
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.3292967    0.2645193    0.3940742
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.1434453   -0.9707944    0.6839038
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0901848   -0.3255126    0.5058822
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.2160148   -0.1303540    0.5623835
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.7648718   -1.6934273    0.1636837
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.4452628   -0.6874305   -0.2030950
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.2016128   -0.0355820    0.4388076
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.3226953   -0.6395743   -0.0058164
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                  0.0294835   -0.0383923    0.0973592
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.1949206    0.1450144    0.2448267


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0118337   -0.0490547   0.0727220
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.0095319   -0.0547843   0.0357204
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.1369727   -0.3607054   0.0867601
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0142025   -0.0266884   0.0550934
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -0.0075738   -0.0185234   0.0033758
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0049079   -0.0120415   0.0022256
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0105693   -0.0142554   0.0353941
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.0000167   -0.0013175   0.0012841
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0004036   -0.0313617   0.0305545
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0350759   -0.1083268   0.0381749
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0090330   -0.0594956   0.0414296
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0551660   -0.3035074   0.1931754
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0025255   -0.0327695   0.0378205
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0003718   -0.0184993   0.0177556
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0247914   -0.0663970   0.0168143
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0031392   -0.0068830   0.0131613
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0049022   -0.0119203   0.0021160
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0188187   -0.0085539   0.0461914
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0005844   -0.0018989   0.0007302
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0005692   -0.0267937   0.0279320
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0002765   -0.0987799   0.0982269
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0099276   -0.0402393   0.0600945
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0348807   -0.2338324   0.1640709
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0214450   -0.0525145   0.0096245
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0052377   -0.0190173   0.0085420
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0213079   -0.0036050   0.0462208
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0189390   -0.0430894   0.0052114
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0000712   -0.0016263   0.0017687
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0008405   -0.0123355   0.0140165
