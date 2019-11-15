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
![](/tmp/49a11d49-60e5-4bf7-824e-3418002a5669/1138647b-9913-4380-99bc-727abda97e3a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/49a11d49-60e5-4bf7-824e-3418002a5669/1138647b-9913-4380-99bc-727abda97e3a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/49a11d49-60e5-4bf7-824e-3418002a5669/1138647b-9913-4380-99bc-727abda97e3a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.5433333   -0.8229128   -0.2637539
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                -1.6212500   -2.3756597   -0.8668403
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.8638290   -0.9848884   -0.7427696
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -1.1114329   -1.5416796   -0.6811862
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.5486476   -0.7891029   -0.3081923
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.7424439   -1.0522936   -0.4325942
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 1.3328136    1.1679575    1.4976697
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                 0.9630427    0.8729187    1.0531666
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.4968886   -0.5181040   -0.4756733
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.5974022   -0.6916159   -0.5031884
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1900252    0.1002104    0.2798401
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.4605606   -0.9967287    0.0756074
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.6778139   -0.7115208   -0.6441070
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.4242857   -0.4784569   -0.3701145
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.2551541   -0.3007795   -0.2095286
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -1.1242068   -1.1522948   -1.0961187
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.5248721   -1.5752417   -1.4745025
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.8080000   -0.8384743   -0.7775257
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0599231   -0.0889074    0.2087536
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0014666   -0.4778339    0.4749007
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -1.3104375   -1.4231291   -1.1977458
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -1.3631454   -1.7538911   -0.9723998
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.9239168   -1.1300904   -0.7177432
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.2466663   -1.4384174   -1.0549153
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3626290   -1.4879351   -1.2373229
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.5514583   -1.9539746   -1.1489420
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5500833   -0.6014714   -0.4986951
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4966229   -0.6617825   -0.3314633
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -1.5192997   -1.6415432   -1.3970563
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -1.9268842   -2.2599502   -1.5938181
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.1071311    0.0120901    0.2021722
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0827516   -0.0148459    0.1803491
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.8570365   -0.8833505   -0.8307224
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.0699897   -1.1920751   -0.9479043
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -1.7943418   -1.8668210   -1.7218627
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -2.2802825   -2.6707309   -1.8898342
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -1.0423478   -1.0757913   -1.0089044
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.7833333   -0.8545896   -0.7120771
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -1.1484014   -1.1985357   -1.0982670
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -1.3851812   -1.4406365   -1.3297259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.3443862   -1.3825869   -1.3061854
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.1993750   -1.2225095   -1.1762405
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0302728   -0.1476323    0.2081778
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.4167603   -0.9508713    0.1173507
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -1.7284036   -1.8542547   -1.6025526
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -1.8521670   -2.2707594   -1.4335745
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -1.5576747   -1.8126052   -1.3027441
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -2.0142716   -2.2305410   -1.7980022
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6336298   -2.7712599   -2.4959997
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -3.0591667   -3.6621048   -2.4562285
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.1335207   -0.4397053    0.1726639
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0697671   -0.3679408    0.2284066
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -1.5869639   -1.6450366   -1.5288911
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.8361085   -2.1091802   -1.5630368
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -2.9738450   -3.0440365   -2.9036534
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -3.2934426   -3.5819003   -3.0049849
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -2.2134909   -2.2535699   -2.1734120
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -2.0688889   -2.1675727   -1.9702051
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -2.4258566   -2.4872765   -2.3644368
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -1.3194565   -1.3774491   -1.2614639
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
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3236661   -1.4316775   -1.2156546
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0633202   -1.1909180   -0.9357224
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5457721   -0.5948454   -0.4966988
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5624368   -1.6783540   -1.4465196
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8677917   -0.8934036   -0.8421799
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8089474   -1.8800645   -1.7378303
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -1.0418789   -1.0745363   -1.0092215
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1414425   -1.1836656   -1.0992193
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3441456   -1.3814027   -1.3068885
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
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
Birth       ki0047075b-MAL-ED          PERU                           1                    0                 -0.2476039   -0.6922514    0.1970435
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.1937963   -0.5886294    0.2010369
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                 -0.3697710   -0.5212955   -0.2182464
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.1005135   -0.1970737   -0.0039533
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.6505859   -1.1943000   -0.1068717
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                  0.2535282    0.1897264    0.3173300
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.8690527   -0.9220789   -0.8160265
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.7168721    0.6584462    0.7752980
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0613897   -0.5605195    0.4377401
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.0527080   -0.4596982    0.3542823
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.3227495   -0.6041655   -0.0413335
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1888293   -0.6103990    0.2327403
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0534604   -0.1189617    0.2258825
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -0.4075844   -0.7625028   -0.0526661
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 -0.0243795   -0.1253601    0.0766010
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.2129532   -0.3374732   -0.0884332
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.4859407   -0.8835280   -0.0883534
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                  0.2590145    0.1803003    0.3377287
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.2367799   -0.3096539   -0.1639058
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.1450112    0.1006544    0.1893679
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.4470331   -1.0106731    0.1166070
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.1237633   -0.5612228    0.3136961
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.4565969   -0.7887783   -0.1244156
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.4255369   -1.0439837    0.1929099
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                  0.0637536   -0.3211966    0.4487039
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.2491447   -0.5276743    0.0293849
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.3195977   -0.6162714   -0.0229239
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                  0.1446020    0.0380900    0.2511141
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  1.1064001    1.0219171    1.1908831
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.3165365    0.2791622    0.3539109


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.1326667   -0.2643188   -0.0010145
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.0189607   -0.0632192    0.0252977
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0830597   -0.2936647    0.1275453
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -0.0058691   -0.0195555    0.0078174
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0038952   -0.0095869    0.0017966
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0389040   -0.0650985   -0.0127095
Birth       ki1135781-COHORTS          INDIA                          0                    NA                 0.0003714   -0.0012471    0.0019900
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0085993   -0.0134747    0.0306732
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0012715   -0.0004361    0.0029791
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0123473   -0.0818369    0.0571423
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0132286   -0.0579974    0.0315402
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.1394034   -0.3154575    0.0366508
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0061159   -0.0203947    0.0081629
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0043112   -0.0100107    0.0186331
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0431371   -0.0832399   -0.0030342
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0001325   -0.0150014    0.0147364
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0107552   -0.0175582   -0.0039523
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0146055   -0.0376512    0.0084401
6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0004689   -0.0015226    0.0024605
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0069589   -0.0178903    0.0318081
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0002406   -0.0008896    0.0013707
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0241584   -0.0933891    0.0450724
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0240673   -0.0774019    0.0292672
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0873849   -0.3042109    0.1294412
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0119309   -0.0316708    0.0078089
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0021159   -0.0137210    0.0179528
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0164906   -0.0334753    0.0004941
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0222145   -0.0459146    0.0014857
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0003468   -0.0023256    0.0030192
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0050950   -0.0334865    0.0436766
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0004003   -0.0005837    0.0013844
