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

agecat      studyid                    country                        single    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0            215     215  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              0     215  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         0             54      62  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         1              8      62  whz              
Birth       ki0047075b-MAL-ED          INDIA                          0             45      45  whz              
Birth       ki0047075b-MAL-ED          INDIA                          1              0      45  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          0             26      26  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          1              0      26  whz              
Birth       ki0047075b-MAL-ED          PERU                           0            205     228  whz              
Birth       ki0047075b-MAL-ED          PERU                           1             23     228  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0             63     120  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1             57     120  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            112     115  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3     115  whz              
Birth       ki1119695-PROBIT           BELARUS                        0          13291   13830  whz              
Birth       ki1119695-PROBIT           BELARUS                        1            539   13830  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0          12065   12864  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1            799   12864  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      0            654     691  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      1             37     691  whz              
Birth       ki1135781-COHORTS          INDIA                          0           4456    4463  whz              
Birth       ki1135781-COHORTS          INDIA                          1              7    4463  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    0           2789    2860  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    1             71    2860  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0           2388    2393  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              5    2393  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     0            241     241  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              0     241  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         0            179     209  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         1             30     209  whz              
6 months    ki0047075b-MAL-ED          INDIA                          0            234     234  whz              
6 months    ki0047075b-MAL-ED          INDIA                          1              0     234  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          0            236     236  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          1              0     236  whz              
6 months    ki0047075b-MAL-ED          PERU                           0            240     273  whz              
6 months    ki0047075b-MAL-ED          PERU                           1             33     273  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0            140     254  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1            114     254  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            239     247  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              8     247  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1834    2012  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            178    2012  whz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0            248     277  whz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1             29     277  whz              
6 months    ki1119695-PROBIT           BELARUS                        0          15115   15758  whz              
6 months    ki1119695-PROBIT           BELARUS                        1            643   15758  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0           7971    8474  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            503    8474  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      0            827     894  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      1             67     894  whz              
6 months    ki1135781-COHORTS          INDIA                          0           4955    4964  whz              
6 months    ki1135781-COHORTS          INDIA                          1              9    4964  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    0           2606    2674  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    1             68    2674  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0           4816    4824  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              8    4824  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     0            212     212  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              0     212  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         0            148     169  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         1             21     169  whz              
24 months   ki0047075b-MAL-ED          INDIA                          0            225     225  whz              
24 months   ki0047075b-MAL-ED          INDIA                          1              0     225  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          0            228     228  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          1              0     228  whz              
24 months   ki0047075b-MAL-ED          PERU                           0            176     201  whz              
24 months   ki0047075b-MAL-ED          PERU                           1             25     201  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0            131     238  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1            107     238  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            208     214  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6     214  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0       6  whz              
24 months   ki1119695-PROBIT           BELARUS                        0           3830    3972  whz              
24 months   ki1119695-PROBIT           BELARUS                        1            142    3972  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            388     432  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             44     432  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      0            932    1021  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      1             89    1021  whz              
24 months   ki1135781-COHORTS          INDIA                          0           3717    3726  whz              
24 months   ki1135781-COHORTS          INDIA                          1              9    3726  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    0           2361    2420  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    1             59    2420  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           4721    4727  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              6    4727  whz              


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
![](/tmp/e34f8dad-e6a7-441b-86d3-422ad31feff3/be6c0b7a-7c9a-4bf4-bbfd-9e777d9a42c9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e34f8dad-e6a7-441b-86d3-422ad31feff3/be6c0b7a-7c9a-4bf4-bbfd-9e777d9a42c9/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e34f8dad-e6a7-441b-86d3-422ad31feff3/be6c0b7a-7c9a-4bf4-bbfd-9e777d9a42c9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.3496296    0.0129664    0.6862928
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.7625000   -0.0474852    1.5724852
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.0311019   -0.1711779    0.1089742
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                 0.1892413   -0.1230526    0.5015351
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0177169   -0.3334151    0.3688489
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.5082627   -0.7879547   -0.2285707
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -1.1344163   -1.3475913   -0.9212413
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                -1.0668044   -1.2092499   -0.9243589
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.5100469   -0.5368935   -0.4832003
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.5832748   -0.7025334   -0.4640163
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                -1.0674725   -1.1770721   -0.9578729
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.8757348   -1.3695016   -0.3819680
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.9764901   -1.0121932   -0.9407871
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.9871429   -1.0249916   -0.9492941
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.7359624   -0.7927564   -0.6791684
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0287331   -0.0953268    0.0378605
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.6889322   -0.7427226   -0.6351417
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.6340000   -0.6780019   -0.5899981
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 1.0026331    0.8266654    1.1786008
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.7538643    0.2744557    1.2332729
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 1.0613881    0.9343100    1.1884663
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                 0.9719301    0.5277209    1.4161394
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.5612278    0.2343072    0.8881484
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.5331912    0.3151019    0.7512805
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5343375    0.4035792    0.6650959
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5925000   -0.4882365    1.6732365
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0807672    0.0260047    0.1355298
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0762918   -0.1322452    0.2848288
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0315206   -0.1527440    0.0897027
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.2807385   -0.6670200    0.1055430
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.5752877    0.5155020    0.6350735
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.4472408    0.3770023    0.5174793
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.3163237    0.2897004    0.3429470
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1575850    0.0436816    0.2714884
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1668695    0.0904959    0.2432432
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.2526469   -0.2450522    0.7503460
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.7098951   -0.7430287   -0.6767615
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -1.0322222   -1.0700926   -0.9943519
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.2887429   -0.3373849   -0.2401010
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.4496963   -0.4894747   -0.4099179
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.3903686   -0.4286532   -0.3520840
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.4493750   -0.4619543   -0.4367957
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.4563231    0.2431715    0.6694748
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.2975976   -0.4580265    1.0532217
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.1232085   -0.0044065    0.2508236
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0496243   -0.3726017    0.4718503
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.4521386    0.2155351    0.6887421
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.4387371    0.2475518    0.6299224
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0763782   -0.0483716    0.2011280
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.6933333   -1.6135001    0.2268334
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.6967001    0.5800528    0.8133473
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.2716000    0.0345280    0.5086720
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -1.2008806   -1.3082426   -1.0935187
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.9922788   -1.2024586   -0.7820989
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.2549680   -0.3131834   -0.1967526
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.5862149   -0.8894958   -0.2829340
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.6594835   -0.6934635   -0.6255034
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.6300000   -0.6887577   -0.5712423
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.6081826   -0.6513421   -0.5650232
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1287629    0.0943983    0.1631274
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
Birth       ki0047075b-MAL-ED          PERU                           1                    0                  0.2203431   -0.1217266    0.5624129
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.5259797   -0.9800796   -0.0718797
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                  0.0676119   -0.1226710    0.2578948
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0732279   -0.1954182    0.0489624
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                  0.1917377   -0.3143191    0.6977945
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                 -0.0106527   -0.0626838    0.0413784
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.7072293    0.6197592    0.7946994
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0549322   -0.0162654    0.1261297
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.2487688   -0.7604098    0.2628722
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.0894580   -0.5519122    0.3729962
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0280366   -0.4200629    0.3639898
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0581625   -1.0304555    1.1467805
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0044754   -0.2204150    0.2114642
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -0.2492179   -0.6537322    0.1552964
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 -0.1280469   -0.2077955   -0.0482983
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.1587387   -0.2756015   -0.0418760
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0857773   -0.4181540    0.5897087
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.3223272   -0.3726461   -0.2720082
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.1609534   -0.2237399   -0.0981669
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0590064   -0.0997170   -0.0182959
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.1587255   -0.9440810    0.6266299
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.0735842   -0.5151434    0.3679750
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0134015   -0.3180072    0.2912042
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.7697115   -1.6982961    0.1588731
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.4251001   -0.6984043   -0.1517959
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.2086019   -0.0276539    0.4448577
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.3312469   -0.6401723   -0.0223216
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                  0.0294835   -0.0383923    0.0973592
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.7369455    0.6821460    0.7917450
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.4295351    0.3935671    0.4655030


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0532736   -0.0651185    0.1716657
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.0209157   -0.0834598    0.0416284
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.2103002   -0.4584520    0.0378515
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -0.0104470   -0.0210414    0.0001474
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0048139   -0.0119665    0.0023386
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0122482   -0.0126015    0.0370979
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.0000167   -0.0013175    0.0012841
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0018278   -0.0312229    0.0275673
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0001148   -0.0016450    0.0018746
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0305557   -0.1024797    0.0413682
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0085066   -0.0596175    0.0426043
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0190493   -0.2866797    0.2485811
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0018838   -0.0333985    0.0371662
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0010095   -0.0192281    0.0172091
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0253627   -0.0668163    0.0160910
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0039561   -0.0047882    0.0127005
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0054245   -0.0123830    0.0015340
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0251439    0.0003306    0.0499572
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0005844   -0.0018989    0.0007302
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0049519   -0.0281268    0.0182230
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0000979   -0.0011182    0.0009225
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0063001   -0.0857601    0.0983603
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0120103   -0.0663378    0.0423171
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0431085   -0.2390059    0.1527889
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0215807   -0.0527095    0.0095481
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0092706   -0.0222439    0.0037027
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0211584   -0.0031511    0.0454680
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0247284   -0.0482120   -0.0012448
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0000712   -0.0016263    0.0017687
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0018752   -0.0225897    0.0188392
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0005452   -0.0004095    0.0014999
