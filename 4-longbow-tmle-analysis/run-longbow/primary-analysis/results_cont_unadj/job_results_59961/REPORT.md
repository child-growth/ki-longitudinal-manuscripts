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

**Intervention Variable:** single

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        single    n_cell       n
----------  ---------------  -----------------------------  -------  -------  ------
Birth       COHORTS          GUATEMALA                      0            719     767
Birth       COHORTS          GUATEMALA                      1             48     767
Birth       COHORTS          INDIA                          0           4771    4778
Birth       COHORTS          INDIA                          1              7    4778
Birth       COHORTS          PHILIPPINES                    0           2936    3010
Birth       COHORTS          PHILIPPINES                    1             74    3010
Birth       JiVitA-4         BANGLADESH                     0           2814    2819
Birth       JiVitA-4         BANGLADESH                     1              5    2819
Birth       MAL-ED           BANGLADESH                     0            231     231
Birth       MAL-ED           BANGLADESH                     1              0     231
Birth       MAL-ED           BRAZIL                         0             57      65
Birth       MAL-ED           BRAZIL                         1              8      65
Birth       MAL-ED           INDIA                          0             47      47
Birth       MAL-ED           INDIA                          1              0      47
Birth       MAL-ED           NEPAL                          0             27      27
Birth       MAL-ED           NEPAL                          1              0      27
Birth       MAL-ED           PERU                           0            209     233
Birth       MAL-ED           PERU                           1             24     233
Birth       MAL-ED           SOUTH AFRICA                   0             63     123
Birth       MAL-ED           SOUTH AFRICA                   1             60     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            122     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              3     125
Birth       PROBIT           BELARUS                        0          13351   13893
Birth       PROBIT           BELARUS                        1            542   13893
Birth       ZVITAMBO         ZIMBABWE                       0          12942   13817
Birth       ZVITAMBO         ZIMBABWE                       1            875   13817
6 months    COHORTS          GUATEMALA                      0            826     893
6 months    COHORTS          GUATEMALA                      1             67     893
6 months    COHORTS          INDIA                          0           4962    4971
6 months    COHORTS          INDIA                          1              9    4971
6 months    COHORTS          PHILIPPINES                    0           2608    2676
6 months    COHORTS          PHILIPPINES                    1             68    2676
6 months    Guatemala BSC    GUATEMALA                      0            248     277
6 months    Guatemala BSC    GUATEMALA                      1             29     277
6 months    JiVitA-4         BANGLADESH                     0           4814    4822
6 months    JiVitA-4         BANGLADESH                     1              8    4822
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
6 months    PROBIT           BELARUS                        0          15117   15760
6 months    PROBIT           BELARUS                        1            643   15760
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1835    2013
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            178    2013
6 months    ZVITAMBO         ZIMBABWE                       0           8125    8638
6 months    ZVITAMBO         ZIMBABWE                       1            513    8638
24 months   COHORTS          GUATEMALA                      0            923    1010
24 months   COHORTS          GUATEMALA                      1             87    1010
24 months   COHORTS          INDIA                          0           3744    3753
24 months   COHORTS          INDIA                          1              9    3753
24 months   COHORTS          PHILIPPINES                    0           2357    2416
24 months   COHORTS          PHILIPPINES                    1             59    2416
24 months   JiVitA-4         BANGLADESH                     0           4738    4744
24 months   JiVitA-4         BANGLADESH                     1              6    4744
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
24 months   PROBIT           BELARUS                        0           3890    4035
24 months   PROBIT           BELARUS                        1            145    4035
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0       6
24 months   ZVITAMBO         ZIMBABWE                       0           1533    1637
24 months   ZVITAMBO         ZIMBABWE                       1            104    1637


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
![](/tmp/08e05d32-e95e-46da-aa8e-e33e9a4f67ba/85ab0737-76fd-4289-b7e5-e0a810f8f2fe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/08e05d32-e95e-46da-aa8e-e33e9a4f67ba/85ab0737-76fd-4289-b7e5-e0a810f8f2fe/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/08e05d32-e95e-46da-aa8e-e33e9a4f67ba/85ab0737-76fd-4289-b7e5-e0a810f8f2fe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      0                    NA                 0.1846871    0.0945983    0.2747758
Birth       COHORTS          GUATEMALA                      1                    NA                -0.3516667   -0.7107876    0.0074543
Birth       COHORTS          INDIA                          0                    NA                -0.6778139   -0.7115208   -0.6441070
Birth       COHORTS          INDIA                          1                    NA                -0.4242857   -0.4784569   -0.3701145
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.2421117   -0.2816143   -0.2026092
Birth       COHORTS          PHILIPPINES                    1                    NA                -0.4228378   -0.6883020   -0.1573737
Birth       JiVitA-4         BANGLADESH                     0                    NA                -1.5248721   -1.5752417   -1.4745025
Birth       JiVitA-4         BANGLADESH                     1                    NA                -0.8080000   -0.8384743   -0.7775257
Birth       MAL-ED           BRAZIL                         0                    NA                -0.5433333   -0.8229128   -0.2637539
Birth       MAL-ED           BRAZIL                         1                    NA                -1.6212500   -2.3756597   -0.8668403
Birth       MAL-ED           PERU                           0                    NA                -0.8583254   -0.9795460   -0.7371047
Birth       MAL-ED           PERU                           1                    NA                -1.0958333   -1.5138107   -0.6778560
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.5652381   -0.7793278   -0.3511483
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                -0.7015000   -1.0267622   -0.3762378
Birth       PROBIT           BELARUS                        0                    NA                 1.3217287    1.1610845    1.4823729
Birth       PROBIT           BELARUS                        1                    NA                 1.0580443    0.8734598    1.2426288
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.4946724   -0.5158678   -0.4734769
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.5911771   -0.6755957   -0.5067586
6 months    COHORTS          GUATEMALA                      0                    NA                -1.7836199   -1.8568602   -1.7103795
6 months    COHORTS          GUATEMALA                      1                    NA                -2.1211940   -2.3989115   -1.8434765
6 months    COHORTS          INDIA                          0                    NA                -1.0423478   -1.0757913   -1.0089044
6 months    COHORTS          INDIA                          1                    NA                -0.7833333   -0.8545896   -0.7120771
6 months    COHORTS          PHILIPPINES                    0                    NA                -1.1415798   -1.1840577   -1.0991018
6 months    COHORTS          PHILIPPINES                    1                    NA                -1.1361765   -1.4629462   -0.8094067
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -1.5186358   -1.6410623   -1.3962092
6 months    Guatemala BSC    GUATEMALA                      1                    NA                -1.9370115   -2.2670985   -1.6069245
6 months    JiVitA-4         BANGLADESH                     0                    NA                -1.3443862   -1.3825869   -1.3061854
6 months    JiVitA-4         BANGLADESH                     1                    NA                -1.1993750   -1.2225095   -1.1762405
6 months    MAL-ED           BRAZIL                         0                    NA                 0.0645531   -0.0851990    0.2143052
6 months    MAL-ED           BRAZIL                         1                    NA                -0.0537222   -0.5070021    0.3995576
6 months    MAL-ED           PERU                           0                    NA                -1.3086771   -1.4222446   -1.1951096
6 months    MAL-ED           PERU                           1                    NA                -1.4326768   -1.7713001   -1.0940534
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.9666667   -1.1189584   -0.8143750
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                -1.1820175   -1.3941062   -0.9699289
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3626290   -1.4879351   -1.2373229
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.5514583   -1.9539746   -1.1489420
6 months    PROBIT           BELARUS                        0                    NA                 0.1051661    0.0137220    0.1966103
6 months    PROBIT           BELARUS                        1                    NA                -0.0702955   -0.2301528    0.0895618
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5484818   -0.6001349   -0.4968287
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5178371   -0.6741242   -0.3615500
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.8552031   -0.8814854   -0.8289208
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -1.0671735   -1.1784851   -0.9558618
24 months   COHORTS          GUATEMALA                      0                    NA                -2.9714843   -3.0407617   -2.9022069
24 months   COHORTS          GUATEMALA                      1                    NA                -3.2567816   -3.4728494   -3.0407138
24 months   COHORTS          INDIA                          0                    NA                -2.2134909   -2.2535699   -2.1734120
24 months   COHORTS          INDIA                          1                    NA                -2.0688889   -2.1675727   -1.9702051
24 months   COHORTS          PHILIPPINES                    0                    NA                -2.4239711   -2.4697243   -2.3782180
24 months   COHORTS          PHILIPPINES                    1                    NA                -2.2925424   -2.5949988   -1.9900860
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.7815365   -1.8179487   -1.7451244
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.4650000   -1.4755957   -1.4544043
24 months   MAL-ED           BRAZIL                         0                    NA                 0.0336374   -0.1436726    0.2109474
24 months   MAL-ED           BRAZIL                         1                    NA                -0.1878571   -0.7110349    0.3353206
24 months   MAL-ED           PERU                           0                    NA                -1.7223390   -1.8494076   -1.5952705
24 months   MAL-ED           PERU                           1                    NA                -1.9646000   -2.3400009   -1.5891991
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -1.6123664   -1.7826044   -1.4421284
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                -1.6850857   -1.8999715   -1.4701999
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6336298   -2.7712599   -2.4959997
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -3.0591667   -3.6621048   -2.4562285
24 months   PROBIT           BELARUS                        0                    NA                -0.1404374   -0.4312384    0.1503635
24 months   PROBIT           BELARUS                        1                    NA                -0.2476207   -0.4938166   -0.0014248
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -1.5857567   -1.6437344   -1.5277790
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -1.8643269   -2.1246428   -1.6040111


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      NA                   NA                 0.1511213    0.0632481    0.2389944
Birth       COHORTS          INDIA                          NA                   NA                -0.6774424   -0.7103357   -0.6445492
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.2465548   -0.2856502   -0.2074594
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -1.5236006   -1.5727441   -1.4744571
Birth       MAL-ED           BRAZIL                         NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       MAL-ED           PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.6317073   -0.8249555   -0.4384591
Birth       PROBIT           BELARUS                        NA                   NA                 1.3114417    1.1524752    1.4704082
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5007838   -0.5213479   -0.4802197
6 months    COHORTS          GUATEMALA                      NA                   NA                -1.8089474   -1.8800645   -1.7378303
6 months    COHORTS          INDIA                          NA                   NA                -1.0418789   -1.0745363   -1.0092215
6 months    COHORTS          PHILIPPINES                    NA                   NA                -1.1414425   -1.1836656   -1.0992193
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                -1.5624368   -1.6783540   -1.4465196
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -1.3441456   -1.3814027   -1.3068885
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED           PERU                           NA                   NA                -1.3236661   -1.4316775   -1.2156546
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -1.0633202   -1.1909180   -0.9357224
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    PROBIT           BELARUS                        NA                   NA                 0.0980074    0.0062724    0.1897424
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5457721   -0.5948454   -0.4966988
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8677917   -0.8934036   -0.8421799
24 months   COHORTS          GUATEMALA                      NA                   NA                -2.9960594   -3.0622330   -2.9298858
24 months   COHORTS          INDIA                          NA                   NA                -2.2131442   -2.2522996   -2.1739887
24 months   COHORTS          PHILIPPINES                    NA                   NA                -2.4207616   -2.4660144   -2.3755087
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.7811362   -1.8166519   -1.7456205
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED           PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   PROBIT           BELARUS                        NA                   NA                -0.1442891   -0.4253755    0.1367972
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6034545   -1.6603071   -1.5466018


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      1                    0                 -0.5363537   -0.9066021   -0.1661054
Birth       COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          1                    0                  0.2535282    0.1897264    0.3173300
Birth       COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    1                    0                 -0.1807261   -0.4491133    0.0876611
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                  0.7168721    0.6584462    0.7752980
Birth       MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         1                    0                 -1.0779167   -1.8824654   -0.2733679
Birth       MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    0                 -0.2375080   -0.6727085    0.1976926
Birth       MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    0                 -0.1362619   -0.5256588    0.2531350
Birth       PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        1                    0                 -0.2636844   -0.4176957   -0.1096732
Birth       ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                 -0.0965048   -0.1835435   -0.0094661
6 months    COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      1                    0                 -0.3375742   -0.6247869   -0.0503614
6 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    0                  0.2590145    0.1803003    0.3377287
6 months    COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    1                    0                  0.0054033   -0.3241158    0.3349224
6 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      1                    0                 -0.4183757   -0.7704350   -0.0663165
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                  0.1450112    0.1006544    0.1893679
6 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         1                    0                 -0.1182753   -0.5956518    0.3591012
6 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    0                 -0.1239997   -0.4811598    0.2331604
6 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    0                 -0.2153509   -0.4764531    0.0457513
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1888293   -0.6103990    0.2327403
6 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        1                    0                 -0.1754616   -0.2986548   -0.0522685
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0306448   -0.1339569    0.1952464
6 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 -0.2119704   -0.3263428   -0.0975980
24 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      1                    0                 -0.2852973   -0.5121997   -0.0583950
24 months   COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    0                  0.1446020    0.0380900    0.2511141
24 months   COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    1                    0                  0.1314288   -0.1744686    0.4373262
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                  0.3165365    0.2791622    0.3539109
24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         1                    0                 -0.2214945   -0.7739018    0.3309127
24 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           1                    0                 -0.2422610   -0.6385844    0.1540625
24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    0                 -0.0727193   -0.3468668    0.2014283
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.4255369   -1.0439837    0.1929099
24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        1                    0                 -0.1071832   -0.4781078    0.2637413
24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.2785702   -0.5452644   -0.0118761


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      0                    NA                -0.0335658   -0.0584960   -0.0086356
Birth       COHORTS          INDIA                          0                    NA                 0.0003714   -0.0012471    0.0019900
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.0044431   -0.0112269    0.0023407
Birth       JiVitA-4         BANGLADESH                     0                    NA                 0.0012715   -0.0004361    0.0029791
Birth       MAL-ED           BRAZIL                         0                    NA                -0.1326667   -0.2643188   -0.0010145
Birth       MAL-ED           PERU                           0                    NA                -0.0244643   -0.0702443    0.0213156
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.0664692   -0.2568030    0.1238646
Birth       PROBIT           BELARUS                        0                    NA                -0.0102870   -0.0171793   -0.0033947
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.0061114   -0.0116373   -0.0005855
6 months    COHORTS          GUATEMALA                      0                    NA                -0.0253275   -0.0476528   -0.0030022
6 months    COHORTS          INDIA                          0                    NA                 0.0004689   -0.0015226    0.0024605
6 months    COHORTS          PHILIPPINES                    0                    NA                 0.0001373   -0.0082362    0.0085108
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0438011   -0.0836367   -0.0039654
6 months    JiVitA-4         BANGLADESH                     0                    NA                 0.0002406   -0.0008896    0.0013707
6 months    MAL-ED           BRAZIL                         0                    NA                -0.0169773   -0.0857316    0.0517770
6 months    MAL-ED           PERU                           0                    NA                -0.0149890   -0.0584286    0.0284507
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.0966535   -0.2145820    0.0212749
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0061159   -0.0203947    0.0081629
6 months    PROBIT           BELARUS                        0                    NA                -0.0071587   -0.0127747   -0.0015428
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0027098   -0.0118501    0.0172697
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0125887   -0.0194628   -0.0057145
24 months   COHORTS          GUATEMALA                      0                    NA                -0.0245751   -0.0447346   -0.0044157
24 months   COHORTS          INDIA                          0                    NA                 0.0003468   -0.0023256    0.0030192
24 months   COHORTS          PHILIPPINES                    0                    NA                 0.0032096   -0.0044806    0.0108997
24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0004003   -0.0005837    0.0013844
24 months   MAL-ED           BRAZIL                         0                    NA                -0.0275230   -0.0970488    0.0420028
24 months   MAL-ED           PERU                           0                    NA                -0.0301320   -0.0806559    0.0203919
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0326931   -0.1560303    0.0906441
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0119309   -0.0316708    0.0078089
24 months   PROBIT           BELARUS                        0                    NA                -0.0038517   -0.0171005    0.0093971
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0176978   -0.0349581   -0.0004375
