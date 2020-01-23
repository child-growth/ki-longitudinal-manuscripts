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

**Intervention Variable:** vagbrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        vagbrth    swasted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  --------  --------  -------  ------  -----------------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0       10      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0       75      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1      86  swasted          
Birth       ki1000108-IRC              INDIA                          0                0       52     343  swasted          
Birth       ki1000108-IRC              INDIA                          0                1       14     343  swasted          
Birth       ki1000108-IRC              INDIA                          1                0      237     343  swasted          
Birth       ki1000108-IRC              INDIA                          1                1       40     343  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                0      104     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                1        4     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                0      415     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                1        9     532  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0      179     465  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        5     465  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0      257     465  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1       24     465  swasted          
Birth       ki1119695-PROBIT           BELARUS                        0                0     1502   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        0                1       91   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        1                0    11422   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        1                1      815   13830  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                0     1016   12814  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                1       84   12814  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0    11011   12814  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1      703   12814  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0      483   17985  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1       17   17985  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0    17154   17985  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1      331   17985  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0       70    2395  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1        1    2395  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0     2294    2395  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1       30    2395  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0       25     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0      331     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1       12     368  swasted          
6 months    ki1000108-IRC              INDIA                          0                0       64     408  swasted          
6 months    ki1000108-IRC              INDIA                          0                1        4     408  swasted          
6 months    ki1000108-IRC              INDIA                          1                0      322     408  swasted          
6 months    ki1000108-IRC              INDIA                          1                1       18     408  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      139     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1        0     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      459     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1        5     603  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      187     457  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0     457  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      270     457  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1        0     457  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0      187    2004  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        2    2004  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     1805    2004  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       10    2004  swasted          
6 months    ki1119695-PROBIT           BELARUS                        0                0     1794   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        0                1        4   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        1                0    13948   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        1                1       12   15758  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                0      716    8437  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                1        5    8437  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0     7643    8437  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1       73    8437  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0     1068   16705  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1        7   16705  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0    15408   16705  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      222   16705  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0      333    4056  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1        4    4056  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     3695    4056  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1       24    4056  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0       25     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0      344     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1        3     372  swasted          
24 months   ki1000108-IRC              INDIA                          0                0       67     409  swasted          
24 months   ki1000108-IRC              INDIA                          0                1        2     409  swasted          
24 months   ki1000108-IRC              INDIA                          1                0      337     409  swasted          
24 months   ki1000108-IRC              INDIA                          1                1        3     409  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      135     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1        2     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      435     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1        7     579  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0       98     260  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1        1     260  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      160     260  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1        1     260  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        2       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        4       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6  swasted          
24 months   ki1119695-PROBIT           BELARUS                        0                0      462    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        0                1        1    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        1                0     3506    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        1                1        3    3972  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0       28     426  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1        0     426  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0      367     426  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       31     426  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0      458    8555  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1       17    8555  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     7763    8555  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      317    8555  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0      316    4008  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1        7    4008  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     3581    4008  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      104    4008  swasted          


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

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
![](/tmp/a26e3e77-b739-41af-9604-ff82ed542bd3/8c842700-2ad3-433b-b8fa-8c11572da9d9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a26e3e77-b739-41af-9604-ff82ed542bd3/8c842700-2ad3-433b-b8fa-8c11572da9d9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a26e3e77-b739-41af-9604-ff82ed542bd3/8c842700-2ad3-433b-b8fa-8c11572da9d9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a26e3e77-b739-41af-9604-ff82ed542bd3/8c842700-2ad3-433b-b8fa-8c11572da9d9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC           INDIA        0                    NA                0.2121212   0.1133497   0.3108928
Birth       ki1000108-IRC           INDIA        1                    NA                0.1444043   0.1029503   0.1858583
Birth       ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0271739   0.0036559   0.0506919
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0854093   0.0526957   0.1181228
Birth       ki1119695-PROBIT        BELARUS      0                    NA                0.0571249   0.0289839   0.0852659
Birth       ki1119695-PROBIT        BELARUS      1                    NA                0.0666013   0.0323207   0.1008818
Birth       ki1126311-ZVITAMBO      ZIMBABWE     0                    NA                0.0763636   0.0606686   0.0920587
Birth       ki1126311-ZVITAMBO      ZIMBABWE     1                    NA                0.0600137   0.0557124   0.0643149
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0340000   0.0128817   0.0551183
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0189305   0.0165356   0.0213254
6 months    ki1126311-ZVITAMBO      ZIMBABWE     0                    NA                0.0069348   0.0008770   0.0129926
6 months    ki1126311-ZVITAMBO      ZIMBABWE     1                    NA                0.0094609   0.0073007   0.0116210
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0065116   0.0016099   0.0114134
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0142035   0.0120341   0.0163728
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0357895   0.0189031   0.0526759
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0392327   0.0347479   0.0437174
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0216718   0.0056736   0.0376701
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0282225   0.0220464   0.0343986


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC           INDIA        NA                   NA                0.1574344   0.1188345   0.1960344
Birth       ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0623656   0.0403628   0.0843684
Birth       ki1119695-PROBIT        BELARUS      NA                   NA                0.0655098   0.0324802   0.0985393
Birth       ki1126311-ZVITAMBO      ZIMBABWE     NA                   NA                0.0614172   0.0572600   0.0655744
Birth       kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0193495   0.0169634   0.0217355
6 months    ki1126311-ZVITAMBO      ZIMBABWE     NA                   NA                0.0092450   0.0072027   0.0112873
6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0137085   0.0116390   0.0157780
24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0390415   0.0347089   0.0433741
24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0276946   0.0218340   0.0335552


### Parameter: RR


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC           INDIA        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC           INDIA        1                    0                 0.6807633   0.3939399   1.1764196
Birth       ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 3.1430605   1.2198971   8.0980841
Birth       ki1119695-PROBIT        BELARUS      0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT        BELARUS      1                    0                 1.1658885   0.8470583   1.6047255
Birth       ki1126311-ZVITAMBO      ZIMBABWE     0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO      ZIMBABWE     1                    0                 0.7858932   0.6321662   0.9770026
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    0                 0.5567798   0.2942887   1.0534001
6 months    ki1126311-ZVITAMBO      ZIMBABWE     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO      ZIMBABWE     1                    0                 1.3642561   0.5530721   3.3651932
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    0                 2.1812447   1.0194849   4.6668944
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    0                 1.0962070   0.6740508   1.7827587
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    0                 1.3022679   0.6065679   2.7958972


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC           INDIA        0                    NA                -0.0546868   -0.1412394    0.0318658
Birth       ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.0351917    0.0107070    0.0596764
Birth       ki1119695-PROBIT        BELARUS      0                    NA                 0.0083848   -0.0098609    0.0266306
Birth       ki1126311-ZVITAMBO      ZIMBABWE     0                    NA                -0.0149464   -0.0298234   -0.0000695
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0146505   -0.0353757    0.0060746
6 months    ki1126311-ZVITAMBO      ZIMBABWE     0                    NA                 0.0023102   -0.0035716    0.0081920
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                 0.0071968    0.0022767    0.0121170
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                 0.0032520   -0.0132789    0.0197829
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                 0.0060228   -0.0095887    0.0216342


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC           INDIA        0                    NA                -0.3473625   -1.0213073    0.1018754
Birth       ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.5642804    0.0453422    0.8011313
Birth       ki1119695-PROBIT        BELARUS      0                    NA                 0.1279937   -0.1625659    0.3459340
Birth       ki1126311-ZVITAMBO      ZIMBABWE     0                    NA                -0.2433591   -0.5102221   -0.0236520
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.7571551   -2.2213047    0.0415082
6 months    ki1126311-ZVITAMBO      ZIMBABWE     0                    NA                 0.2498844   -0.7462542    0.6777826
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                 0.5249924    0.0071734    0.7727375
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                 0.0832966   -0.4543321    0.4221779
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                 0.2174713   -0.6006481    0.6174355
