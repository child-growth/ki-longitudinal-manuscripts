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
![](/tmp/41a22642-35c1-48ec-82a2-bf6cd4eaaddc/333eac10-2037-4039-9e70-9b698b33b1ad/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/41a22642-35c1-48ec-82a2-bf6cd4eaaddc/333eac10-2037-4039-9e70-9b698b33b1ad/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/41a22642-35c1-48ec-82a2-bf6cd4eaaddc/333eac10-2037-4039-9e70-9b698b33b1ad/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      0                    NA                -1.0688037   -1.1786517   -0.9589558
Birth       COHORTS          GUATEMALA                      1                    NA                -0.7907070   -1.2840391   -0.2973748
Birth       COHORTS          INDIA                          0                    NA                -0.9764901   -1.0121932   -0.9407871
Birth       COHORTS          INDIA                          1                    NA                -0.9871429   -1.0249916   -0.9492941
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.7350747   -0.7913720   -0.6787774
Birth       COHORTS          PHILIPPINES                    1                    NA                 0.0798816    0.0183332    0.1414299
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.6889322   -0.7427226   -0.6351417
Birth       JiVitA-4         BANGLADESH                     1                    NA                -0.6340000   -0.6780019   -0.5899981
Birth       MAL-ED           BRAZIL                         0                    NA                 0.3496296    0.0129664    0.6862928
Birth       MAL-ED           BRAZIL                         1                    NA                 0.7625000   -0.0474852    1.5724852
Birth       MAL-ED           PERU                           0                    NA                -0.0178084   -0.1657450    0.1301283
Birth       MAL-ED           PERU                           1                    NA                 0.3494964    0.0433519    0.6556408
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                 0.0257302   -0.3173607    0.3688211
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                -0.4948233   -0.7696708   -0.2199759
Birth       PROBIT           BELARUS                        0                    NA                -1.1407689   -1.3546851   -0.9268528
Birth       PROBIT           BELARUS                        1                    NA                -1.0774912   -1.2197589   -0.9352236
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.5101820   -0.5369840   -0.4833801
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.6023715   -0.7247444   -0.4799985
6 months    COHORTS          GUATEMALA                      0                    NA                 0.1658524    0.0898500    0.2418547
6 months    COHORTS          GUATEMALA                      1                    NA                 0.3091653   -0.2450606    0.8633912
6 months    COHORTS          INDIA                          0                    NA                -0.7098951   -0.7430287   -0.6767615
6 months    COHORTS          INDIA                          1                    NA                -1.0322222   -1.0700926   -0.9943519
6 months    COHORTS          PHILIPPINES                    0                    NA                -0.2943063   -0.3473606   -0.2412520
6 months    COHORTS          PHILIPPINES                    1                    NA                -0.2524060   -0.2827316   -0.2220805
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0349642   -0.1563694    0.0864410
6 months    Guatemala BSC    GUATEMALA                      1                    NA                -0.4707119   -0.8448936   -0.0965301
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.3903686   -0.4286532   -0.3520840
6 months    JiVitA-4         BANGLADESH                     1                    NA                -0.4493750   -0.4619543   -0.4367957
6 months    MAL-ED           BRAZIL                         0                    NA                 1.0050975    0.8292907    1.1809044
6 months    MAL-ED           BRAZIL                         1                    NA                 0.8120464    0.3323311    1.2917618
6 months    MAL-ED           PERU                           0                    NA                 1.0587596    0.9314899    1.1860292
6 months    MAL-ED           PERU                           1                    NA                 0.9879170    0.5271944    1.4486396
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.5950219    0.2871205    0.9029232
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                 0.5031699    0.2816767    0.7246630
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5343375    0.4035792    0.6650959
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5925000   -0.4882365    1.6732365
6 months    PROBIT           BELARUS                        0                    NA                 0.5694790    0.5105589    0.6283990
6 months    PROBIT           BELARUS                        1                    NA                 0.4794319    0.4096286    0.5492352
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0891063    0.0268989    0.1513137
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0599339   -0.1388780    0.2587458
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.3154650    0.2888149    0.3421151
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                 0.1808933    0.0724515    0.2893352
24 months   COHORTS          GUATEMALA                      0                    NA                -0.2542127   -0.3123219   -0.1961035
24 months   COHORTS          GUATEMALA                      1                    NA                -0.7231489   -1.0220130   -0.4242848
24 months   COHORTS          INDIA                          0                    NA                -0.6594835   -0.6934635   -0.6255034
24 months   COHORTS          INDIA                          1                    NA                -0.6300000   -0.6887577   -0.5712423
24 months   COHORTS          PHILIPPINES                    0                    NA                -0.6100915   -0.6546609   -0.5655220
24 months   COHORTS          PHILIPPINES                    1                    NA                 0.0361729    0.0014572    0.0708886
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.2245351   -1.2573027   -1.1917674
24 months   JiVitA-4         BANGLADESH                     1                    NA                -0.7950000   -0.8090439   -0.7809561
24 months   MAL-ED           BRAZIL                         0                    NA                 0.4530989    0.2387659    0.6674319
24 months   MAL-ED           BRAZIL                         1                    NA                 0.7004285   -0.0873278    1.4881849
24 months   MAL-ED           PERU                           0                    NA                 0.1040833   -0.0339372    0.2421038
24 months   MAL-ED           PERU                           1                    NA                 0.2428661   -0.3207538    0.8064861
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.4402379    0.2084781    0.6719978
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                 0.5277406    0.3274363    0.7280448
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0763782   -0.0483716    0.2011280
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.6933333   -1.6135001    0.2268334
24 months   PROBIT           BELARUS                        0                    NA                 0.7062801    0.5860642    0.8264961
24 months   PROBIT           BELARUS                        1                    NA                 0.3933667    0.1727893    0.6139440
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -1.2017607   -1.3093944   -1.0941271
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.9745854   -1.1835494   -0.7656214


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
Birth       COHORTS          GUATEMALA                      1                    0                  0.2780968   -0.2276036    0.7837972
Birth       COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          1                    0                 -0.0106527   -0.0626838    0.0413784
Birth       COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    1                    0                  0.8149563    0.7318025    0.8981101
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                  0.0549322   -0.0162654    0.1261297
Birth       MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         1                    0                  0.4128704   -0.4642944    1.2900352
Birth       MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    0                  0.3673047    0.0274691    0.7071403
Birth       MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    0                 -0.5205535   -0.9635091   -0.0775980
Birth       PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        1                    0                  0.0632777   -0.1186081    0.2451635
Birth       ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                 -0.0921894   -0.2174088    0.0330299
6 months    COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      1                    0                  0.1433130   -0.4163159    0.7029418
6 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    0                 -0.3223272   -0.3726461   -0.2720082
6 months    COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    1                    0                  0.0419003   -0.0191402    0.1029408
6 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      1                    0                 -0.4357477   -0.8287519   -0.0427434
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 -0.0590064   -0.0997170   -0.0182959
6 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         1                    0                 -0.1930511   -0.7061292    0.3200269
6 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    0                 -0.0708425   -0.5512899    0.4096048
6 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    0                 -0.0918520   -0.4712198    0.2875158
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0581625   -1.0304555    1.1467805
6 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        1                    0                 -0.0900470   -0.1695416   -0.0105525
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0291724   -0.2376963    0.1793514
6 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 -0.1345717   -0.2460437   -0.0230996
24 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      1                    0                 -0.4689362   -0.7735796   -0.1642927
24 months   COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    0                  0.0294835   -0.0383923    0.0973592
24 months   COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    1                    0                  0.6462644    0.5903086    0.7022202
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                  0.4295351    0.3935671    0.4655030
24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         1                    0                  0.2473296   -0.5754135    1.0700727
24 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           1                    0                  0.1387829   -0.4414071    0.7189728
24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.0875026   -0.2191466    0.3941518
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.7697115   -1.6982961    0.1588731
24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        1                    0                 -0.3129135   -0.5666258   -0.0592012
24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                  0.2271754   -0.0081801    0.4625308


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      0                    NA                 0.0135794   -0.0111998    0.0383587
Birth       COHORTS          INDIA                          0                    NA                -0.0000167   -0.0013175    0.0012841
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.0027155   -0.0314125    0.0259815
Birth       JiVitA-4         BANGLADESH                     0                    NA                 0.0001148   -0.0016450    0.0018746
Birth       MAL-ED           BRAZIL                         0                    NA                 0.0532736   -0.0651185    0.1716657
Birth       MAL-ED           PERU                           0                    NA                -0.0342092   -0.1106010    0.0421826
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.2183135   -0.4603838    0.0237568
Birth       PROBIT           BELARUS                        0                    NA                -0.0084092   -0.0209234    0.0041049
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.0046788   -0.0117767    0.0024191
6 months    COHORTS          GUATEMALA                      0                    NA                 0.0261611    0.0014070    0.0509152
6 months    COHORTS          INDIA                          0                    NA                -0.0005844   -0.0018989    0.0007302
6 months    COHORTS          PHILIPPINES                    0                    NA                 0.0006115   -0.0301475    0.0313705
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0219191   -0.0635489    0.0197108
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0000979   -0.0011182    0.0009225
6 months    MAL-ED           BRAZIL                         0                    NA                -0.0330202   -0.1063517    0.0403114
6 months    MAL-ED           PERU                           0                    NA                -0.0058780   -0.0589906    0.0472346
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.0528434   -0.3015545    0.1958677
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0018838   -0.0333985    0.0371662
6 months    PROBIT           BELARUS                        0                    NA                 0.0046309   -0.0052153    0.0144772
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0093486   -0.0400927    0.0213956
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0045658   -0.0113996    0.0022681
24 months   COHORTS          GUATEMALA                      0                    NA                -0.0254836   -0.0486729   -0.0022944
24 months   COHORTS          INDIA                          0                    NA                 0.0000712   -0.0016263    0.0017687
24 months   COHORTS          PHILIPPINES                    0                    NA                 0.0000336   -0.0233524    0.0234196
24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0005452   -0.0004095    0.0014999
24 months   MAL-ED           BRAZIL                         0                    NA                 0.0095244   -0.0872665    0.1063152
24 months   MAL-ED           PERU                           0                    NA                 0.0071149   -0.0575481    0.0717779
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0312078   -0.2216422    0.1592265
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0215807   -0.0527095    0.0095481
24 months   PROBIT           BELARUS                        0                    NA                -0.0081395   -0.0242213    0.0079424
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0220385   -0.0023677    0.0464448
