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

agecat      studyid                    country                        single    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0            231     231  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              0     231  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         0             57      65  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         1              8      65  haz              
Birth       ki0047075b-MAL-ED          INDIA                          0             47      47  haz              
Birth       ki0047075b-MAL-ED          INDIA                          1              0      47  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          0             27      27  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          1              0      27  haz              
Birth       ki0047075b-MAL-ED          PERU                           0            209     233  haz              
Birth       ki0047075b-MAL-ED          PERU                           1             24     233  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0             63     123  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1             60     123  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            122     125  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3     125  haz              
Birth       ki1119695-PROBIT           BELARUS                        0          13348   13890  haz              
Birth       ki1119695-PROBIT           BELARUS                        1            542   13890  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0          12942   13817  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1            875   13817  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      0            719     767  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      1             48     767  haz              
Birth       ki1135781-COHORTS          INDIA                          0           4771    4778  haz              
Birth       ki1135781-COHORTS          INDIA                          1              7    4778  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    0           2936    3010  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    1             74    3010  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0           2814    2819  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              5    2819  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     0            241     241  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              0     241  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         0            179     209  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         1             30     209  haz              
6 months    ki0047075b-MAL-ED          INDIA                          0            234     234  haz              
6 months    ki0047075b-MAL-ED          INDIA                          1              0     234  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          0            236     236  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          1              0     236  haz              
6 months    ki0047075b-MAL-ED          PERU                           0            240     273  haz              
6 months    ki0047075b-MAL-ED          PERU                           1             33     273  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0            140     254  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1            114     254  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            239     247  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              8     247  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1835    2013  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            178    2013  haz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0            248     277  haz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1             29     277  haz              
6 months    ki1119695-PROBIT           BELARUS                        0          15118   15761  haz              
6 months    ki1119695-PROBIT           BELARUS                        1            643   15761  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0           8125    8638  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            513    8638  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      0            826     893  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      1             67     893  haz              
6 months    ki1135781-COHORTS          INDIA                          0           4962    4971  haz              
6 months    ki1135781-COHORTS          INDIA                          1              9    4971  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    0           2608    2676  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    1             68    2676  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0           4814    4822  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              8    4822  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     0            212     212  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              0     212  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         0            148     169  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         1             21     169  haz              
24 months   ki0047075b-MAL-ED          INDIA                          0            225     225  haz              
24 months   ki0047075b-MAL-ED          INDIA                          1              0     225  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          0            228     228  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          1              0     228  haz              
24 months   ki0047075b-MAL-ED          PERU                           0            176     201  haz              
24 months   ki0047075b-MAL-ED          PERU                           1             25     201  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0            131     238  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1            107     238  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            208     214  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6     214  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0       6  haz              
24 months   ki1119695-PROBIT           BELARUS                        0           3890    4035  haz              
24 months   ki1119695-PROBIT           BELARUS                        1            145    4035  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0           1533    1637  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            104    1637  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      0            923    1010  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      1             87    1010  haz              
24 months   ki1135781-COHORTS          INDIA                          0           3744    3753  haz              
24 months   ki1135781-COHORTS          INDIA                          1              9    3753  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    0           2357    2416  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    1             59    2416  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           4738    4744  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              6    4744  haz              


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
![](/tmp/fbb2b2c9-6730-4de2-b407-c761a2c6517f/822a1db1-de30-4140-b59b-55a1841c7e25/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/fbb2b2c9-6730-4de2-b407-c761a2c6517f/822a1db1-de30-4140-b59b-55a1841c7e25/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/fbb2b2c9-6730-4de2-b407-c761a2c6517f/822a1db1-de30-4140-b59b-55a1841c7e25/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.5433333   -0.8229128   -0.2637539
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                -1.6212500   -2.3756597   -0.8668403
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.8683889   -0.9891501   -0.7476277
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -1.0034474   -1.4478469   -0.5590478
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.5369967   -0.7752353   -0.2987582
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.6933250   -1.0021472   -0.3845027
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 1.3324916    1.1648179    1.5001652
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                 0.9528606    0.8654893    1.0402319
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.4962855   -0.5175509   -0.4750201
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.5860924   -0.6809083   -0.4912766
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1922992    0.1024864    0.2821120
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.4746360   -1.0104374    0.0611654
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.6778139   -0.7115208   -0.6441070
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.4242857   -0.4784569   -0.3701145
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.2558343   -0.2996855   -0.2119832
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.9553639   -0.9886600   -0.9220679
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.5248721   -1.5752417   -1.4745025
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.8080000   -0.8384743   -0.7775257
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0574034   -0.0918845    0.2066914
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0016018   -0.5060802    0.5092838
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -1.3099379   -1.4232249   -1.1966509
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -1.4041949   -1.7725219   -1.0358680
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.9444981   -1.1568839   -0.7321124
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.2290483   -1.4327219   -1.0253747
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3626290   -1.4879351   -1.2373229
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.5514583   -1.9539746   -1.1489420
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5506183   -0.6020581   -0.4991784
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4903939   -0.6549015   -0.3258864
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -1.5213220   -1.6438216   -1.3988224
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -1.9185438   -2.2550244   -1.5820632
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.1076832    0.0130290    0.2023373
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0882929   -0.0069648    0.1835506
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.8573810   -0.8837108   -0.8310512
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.0629144   -1.1821952   -0.9436335
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -1.7907699   -1.8630212   -1.7185186
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -2.2967928   -2.7413894   -1.8521962
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -1.0423478   -1.0757913   -1.0089044
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.7833333   -0.8545896   -0.7120771
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -1.1502914   -1.2023332   -1.0982495
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -1.3479016   -1.3963969   -1.2994063
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.3443862   -1.3825869   -1.3061854
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.1993750   -1.2225095   -1.1762405
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0324488   -0.1450526    0.2099501
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.2088353   -0.7615566    0.3438861
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -1.7258752   -1.8522978   -1.5994527
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -1.9164169   -2.3078118   -1.5250220
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -1.5720586   -1.8083825   -1.3357347
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.8707514   -2.0667367   -1.6747661
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6336298   -2.7712599   -2.4959997
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -3.0591667   -3.6621048   -2.4562285
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.1317870   -0.4379760    0.1744020
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0508993   -0.3411019    0.2393032
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -1.5868776   -1.6449221   -1.5288330
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.8279585   -2.0967163   -1.5592007
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -2.9733226   -3.0440593   -2.9025858
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -3.2712509   -3.5533915   -2.9891103
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -2.2134909   -2.2535699   -2.1734120
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -2.0688889   -2.1675727   -1.9702051
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -2.4275944   -2.4872605   -2.3679282
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -1.3211454   -1.3848074   -1.2574834
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
Birth       ki0047075b-MAL-ED          PERU                           1                    0                 -0.1350584   -0.5913528    0.3212359
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.1563282   -0.5487418    0.2360853
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                 -0.3796309   -0.5310239   -0.2282380
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0898069   -0.1869459    0.0073321
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.6669352   -1.2102934   -0.1235770
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                  0.2535282    0.1897264    0.3173300
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.6995296   -0.7538301   -0.6452291
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.7168721    0.6584462    0.7752980
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0558016   -0.5851115    0.4735082
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.0942570   -0.4794125    0.2908984
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.2845502   -0.5792943    0.0101940
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1888293   -0.6103990    0.2327403
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0602243   -0.1115128    0.2319615
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -0.3972218   -0.7548454   -0.0395983
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 -0.0193903   -0.1197240    0.0809435
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.2055334   -0.3273374   -0.0837294
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.5060229   -0.9568553   -0.0551905
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                  0.2590145    0.1803003    0.3377287
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.1976102   -0.2667360   -0.1284844
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.1450112    0.1006544    0.1893679
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.2412840   -0.8219189    0.3393509
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.1905416   -0.6008211    0.2197379
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.2986928   -0.6036377    0.0062521
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.4255369   -1.0439837    0.1929099
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                  0.0808877   -0.3095149    0.4712902
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.2410809   -0.5159850    0.0338231
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.2979283   -0.5884938   -0.0073629
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                  0.1446020    0.0380900    0.2511141
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  1.1064490    1.0194025    1.1934954
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.3165365    0.2791622    0.3539109


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.1326667   -0.2643188   -0.0010145
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.0144008   -0.0573365    0.0285349
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0947106   -0.3041536    0.1147324
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -0.0055470   -0.0240551    0.0129611
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0044983   -0.0102704    0.0012738
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0411780   -0.0675360   -0.0148199
Birth       ki1135781-COHORTS          INDIA                          0                    NA                 0.0003714   -0.0012471    0.0019900
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0092795   -0.0088164    0.0273754
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0012715   -0.0004361    0.0029791
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0098277   -0.0793272    0.0596718
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0137282   -0.0576424    0.0301861
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.1188221   -0.3007797    0.0631356
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0061159   -0.0203947    0.0081629
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0048462   -0.0094019    0.0190943
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0411148   -0.0806615   -0.0015681
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0006846   -0.0131634    0.0117942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0104107   -0.0172521   -0.0035693
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0181775   -0.0412907    0.0049358
6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0004689   -0.0015226    0.0024605
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0088489   -0.0190736    0.0367714
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0002406   -0.0008896    0.0013707
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0263344   -0.0957208    0.0430521
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0265957   -0.0771418    0.0239503
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0730009   -0.2693007    0.1232989
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0119309   -0.0316708    0.0078089
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0003822   -0.0149578    0.0157223
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0165769   -0.0339387    0.0007848
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0227368   -0.0477094    0.0022357
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0003468   -0.0023256    0.0030192
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0068328   -0.0290370    0.0427025
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0004003   -0.0005837    0.0013844
