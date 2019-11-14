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
Birth       ki0047075b-MAL-ED          BANGLADESH                     0            231     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              0     231
Birth       ki0047075b-MAL-ED          BRAZIL                         0             57      65
Birth       ki0047075b-MAL-ED          BRAZIL                         1              8      65
Birth       ki0047075b-MAL-ED          INDIA                          0             47      47
Birth       ki0047075b-MAL-ED          INDIA                          1              0      47
Birth       ki0047075b-MAL-ED          NEPAL                          0             27      27
Birth       ki0047075b-MAL-ED          NEPAL                          1              0      27
Birth       ki0047075b-MAL-ED          PERU                           0            209     233
Birth       ki0047075b-MAL-ED          PERU                           1             24     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0             63     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1             60     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            122     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3     125
Birth       ki1119695-PROBIT           BELARUS                        0          13348   13890
Birth       ki1119695-PROBIT           BELARUS                        1            542   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0          12942   13817
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1            875   13817
Birth       ki1135781-COHORTS          GUATEMALA                      0            719     767
Birth       ki1135781-COHORTS          GUATEMALA                      1             48     767
Birth       ki1135781-COHORTS          INDIA                          0           4771    4778
Birth       ki1135781-COHORTS          INDIA                          1              7    4778
Birth       ki1135781-COHORTS          PHILIPPINES                    0           2936    3010
Birth       ki1135781-COHORTS          PHILIPPINES                    1             74    3010
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0           2814    2819
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              5    2819
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
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1835    2013
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            178    2013
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0            248     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1             29     277
6 months    ki1119695-PROBIT           BELARUS                        0          15118   15761
6 months    ki1119695-PROBIT           BELARUS                        1            643   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0           8125    8638
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            513    8638
6 months    ki1135781-COHORTS          GUATEMALA                      0            826     893
6 months    ki1135781-COHORTS          GUATEMALA                      1             67     893
6 months    ki1135781-COHORTS          INDIA                          0           4962    4971
6 months    ki1135781-COHORTS          INDIA                          1              9    4971
6 months    ki1135781-COHORTS          PHILIPPINES                    0           2608    2676
6 months    ki1135781-COHORTS          PHILIPPINES                    1             68    2676
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0           4814    4822
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              8    4822
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
24 months   ki1119695-PROBIT           BELARUS                        0           3890    4035
24 months   ki1119695-PROBIT           BELARUS                        1            145    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0           1533    1637
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            104    1637
24 months   ki1135781-COHORTS          GUATEMALA                      0            923    1010
24 months   ki1135781-COHORTS          GUATEMALA                      1             87    1010
24 months   ki1135781-COHORTS          INDIA                          0           3744    3753
24 months   ki1135781-COHORTS          INDIA                          1              9    3753
24 months   ki1135781-COHORTS          PHILIPPINES                    0           2357    2416
24 months   ki1135781-COHORTS          PHILIPPINES                    1             59    2416
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           4738    4744
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              6    4744


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
![](/tmp/335e0526-d6cc-4c49-99dd-ccc166cb9315/cdcf7961-7639-40ca-86ba-6e564fe2c8a3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/335e0526-d6cc-4c49-99dd-ccc166cb9315/cdcf7961-7639-40ca-86ba-6e564fe2c8a3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/335e0526-d6cc-4c49-99dd-ccc166cb9315/cdcf7961-7639-40ca-86ba-6e564fe2c8a3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.5433333   -0.8229128   -0.2637539
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                -1.6212500   -2.3756597   -0.8668403
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.8641307   -0.9853586   -0.7429028
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -1.0368196   -1.4697387   -0.6039005
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.5219213   -0.7502657   -0.2935769
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.7025304   -1.0182794   -0.3867813
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 1.3323383    1.1674770    1.4971995
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                 0.9681984    0.8766431    1.0597536
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.4962883   -0.5175349   -0.4750418
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.5799120   -0.6738798   -0.4859441
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1914946    0.1013865    0.2816028
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.5038772   -1.0942433    0.0864889
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.6778139   -0.7115208   -0.6441070
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.4242857   -0.4784569   -0.3701145
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.2563383   -0.3009430   -0.2117336
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.8411552   -0.8739959   -0.8083145
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.5248721   -1.5752417   -1.4745025
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.8080000   -0.8384743   -0.7775257
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0698371   -0.0802300    0.2199042
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0072115   -0.4710923    0.4566693
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -1.3192624   -1.4327029   -1.2058219
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -1.3842474   -1.7442187   -1.0242762
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.9263631   -1.1196566   -0.7330696
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.1501727   -1.3437536   -0.9565919
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3626290   -1.4879351   -1.2373229
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.5514583   -1.9539746   -1.1489420
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5502680   -0.6016857   -0.4988503
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4983344   -0.6574670   -0.3392017
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -1.5175237   -1.6397054   -1.3953420
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -1.9436216   -2.2707688   -1.6164745
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.1071971    0.0128763    0.2015179
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0929958   -0.0028893    0.1888809
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.8574418   -0.8837278   -0.8311559
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.0748429   -1.1923647   -0.9573211
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -1.7947503   -1.8680036   -1.7214971
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -2.2417327   -2.6433894   -1.8400759
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -1.0423478   -1.0757913   -1.0089044
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.7833333   -0.8545896   -0.7120771
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -1.1502359   -1.2042671   -1.0962048
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -1.3868563   -1.4312957   -1.3424169
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.3443862   -1.3825869   -1.3061854
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.1993750   -1.2225095   -1.1762405
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0353495   -0.1431845    0.2138835
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.1174004   -0.7052743    0.4704735
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -1.7265238   -1.8508192   -1.6022284
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -1.8689701   -2.2867062   -1.4512339
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -1.5509713   -1.7921971   -1.3097455
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.9718922   -2.1739461   -1.7698384
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6332212   -2.7707507   -2.4956916
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -3.0591667   -3.6621048   -2.4562285
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.1289508   -0.4353928    0.1774912
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.1273985   -0.4153751    0.1605781
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -1.5874612   -1.6453731   -1.5295493
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.8210845   -2.0895512   -1.5526177
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -2.9764049   -3.0464692   -2.9063405
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -3.4307531   -3.7489358   -3.1125705
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -2.2134909   -2.2535699   -2.1734120
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -2.0688889   -2.1675727   -1.9702051
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -2.4272501   -2.4858163   -2.3686839
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -1.2043178   -1.2682418   -1.1403938
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.7815365   -1.8179487   -1.7451244
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.4650000   -1.4755957   -1.4544043


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.6317073   -0.8249555   -0.4384591
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3269446    1.1683850    1.4855041
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5007838   -0.5213479   -0.4802197
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1511213    0.0632481    0.2389944
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6774424   -0.7103357   -0.6445492
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2465548   -0.2856502   -0.2074594
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.5236006   -1.5727441   -1.4744571
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3280952   -1.4363364   -1.2198541
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0639173   -1.1916078   -0.9362269
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5457721   -0.5948454   -0.4966988
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5624368   -1.6783540   -1.4465196
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8677917   -0.8934036   -0.8421799
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8089474   -1.8800645   -1.7378303
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -1.0418789   -1.0745363   -1.0092215
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1414425   -1.1836656   -1.0992193
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3441456   -1.3814027   -1.3068885
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7544776   -1.8753255   -1.6336298
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6491807   -1.7842885   -1.5140729
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6451636   -2.7802323   -2.5100948
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6034545   -1.6603071   -1.5466018
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.9960594   -3.0622330   -2.9298858
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.2131442   -2.2522996   -2.1739887
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.4207616   -2.4660144   -2.3755087
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7811362   -1.8166519   -1.7456205


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    0                 -1.0779167   -1.8824654   -0.2733679
Birth       ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    0                 -0.1726889   -0.6199668    0.2745890
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.1806091   -0.5702339    0.2090157
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                 -0.3641399   -0.5127127   -0.2155671
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0836236   -0.1799478    0.0127006
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.6953718   -1.2926840   -0.0980597
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                  0.2535282    0.1897264    0.3173300
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.5848169   -0.6394391   -0.5301946
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.7168721    0.6584462    0.7752980
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0770486   -0.5645047    0.4104074
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.0649851   -0.4411773    0.3112072
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.2238096   -0.4978231    0.0502039
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1888293   -0.6103990    0.2327403
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0519336   -0.1146357    0.2185030
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -0.4260980   -0.7754601   -0.0767358
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 -0.0142012   -0.1124333    0.0840308
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.2174011   -0.3374592   -0.0973430
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.4469823   -0.8556120   -0.0383527
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                  0.2590145    0.1803003    0.3377287
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.2366204   -0.3046012   -0.1686396
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.1450112    0.1006544    0.1893679
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.1527499   -0.7680243    0.4625245
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.1424463   -0.5781539    0.2932614
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.4209209   -0.7339258   -0.1079161
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.4259455   -1.0443699    0.1924789
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                  0.0015523   -0.3989392    0.4020438
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.2336233   -0.5075777    0.0403312
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.4543483   -0.7800499   -0.1286466
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                  0.1446020    0.0380900    0.2511141
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  1.2229323    1.1362932    1.3095713
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.3165365    0.2791622    0.3539109


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.1326667   -0.2643188   -0.0010145
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.0186590   -0.0625398    0.0252218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.1097860   -0.3125160    0.0929439
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -0.0053937   -0.0200026    0.0092152
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0044955   -0.0102190    0.0012280
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0403734   -0.0672360   -0.0135108
Birth       ki1135781-COHORTS          INDIA                          0                    NA                 0.0003714   -0.0012471    0.0019900
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0097835   -0.0101429    0.0297099
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0012715   -0.0004361    0.0029791
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0188164   -0.0874159    0.0497832
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0088329   -0.0515049    0.0338392
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.1375542   -0.3018508    0.0267424
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0061159   -0.0203947    0.0081629
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0044959   -0.0097116    0.0187034
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0449132   -0.0848535   -0.0049728
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0001985   -0.0133234    0.0129265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0103499   -0.0172115   -0.0034883
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0141970   -0.0384152    0.0100212
6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0004689   -0.0015226    0.0024605
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0087935   -0.0224943    0.0400812
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0002406   -0.0008896    0.0013707
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0282489   -0.0987650    0.0422672
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0279538   -0.0796645    0.0237569
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0982094   -0.3021651    0.1057464
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0119424   -0.0316860    0.0078012
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0024540   -0.0188886    0.0139806
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0159933   -0.0325973    0.0006107
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0196545   -0.0425459    0.0032368
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0003468   -0.0023256    0.0030192
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0064885   -0.0277418    0.0407187
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0004003   -0.0005837    0.0013844
