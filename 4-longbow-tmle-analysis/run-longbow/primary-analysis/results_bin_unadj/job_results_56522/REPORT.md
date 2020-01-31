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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        hdlvry    pers_wast   n_cell      n  outcome_variable 
------------  -------------------------  -----------------------------  -------  ----------  -------  -----  -----------------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      339    370  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1       23    370  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        8    370  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        0    370  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          0                 0      354    410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          0                 1       48    410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          1                 0        8    410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          1                 1        0    410  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       0                 0      232    375  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       0                 1       20    375  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       1                 0      111    375  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       1                 1       12    375  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                 0      142   1116  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                 1        9   1116  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 0      872   1116  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 1       93   1116  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                 0       64    375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                 1       10    375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0      246    375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 1       55    375  pers_wast        
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      469    641  pers_wast        
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       10    641  pers_wast        
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      157    641  pers_wast        
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        5    641  pers_wast        
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      551    730  pers_wast        
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       16    730  pers_wast        
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      153    730  pers_wast        
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       10    730  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1966   2056  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       56   2056  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0       33   2056  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1   2056  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      121    556  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1       18    556  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      359    556  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       58    556  pers_wast        
0-24 months   ki1135781-COHORTS          INDIA                          0                 0     2249   3931  pers_wast        
0-24 months   ki1135781-COHORTS          INDIA                          0                 1      197   3931  pers_wast        
0-24 months   ki1135781-COHORTS          INDIA                          1                 0     1292   3931  pers_wast        
0-24 months   ki1135781-COHORTS          INDIA                          1                 1      193   3931  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0       36    323  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1        1    323  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0      273    323  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1       13    323  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     1077   4426  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1       72   4426  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     2998   4426  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      279   4426  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      299    355  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1       49    355  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        7    355  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        0    355  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          0                 0      331    402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          0                 1       63    402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          1                 0        7    402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          1                 1        1    402  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       0                 0      231    369  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       0                 1       18    369  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       1                 0      113    369  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       1                 1        7    369  pers_wast        
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0      466    638  pers_wast        
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1       11    638  pers_wast        
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      158    638  pers_wast        
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        3    638  pers_wast        
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      202    250  pers_wast        
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        3    250  pers_wast        
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       43    250  pers_wast        
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        2    250  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1876   1956  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       48   1956  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0       31   1956  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1   1956  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      116    531  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1       13    531  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0      358    531  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       44    531  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      339    370  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1       23    370  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        8    370  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        0    370  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          0                 0      354    410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          0                 1       48    410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          1                 0        8    410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          1                 1        0    410  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       0                 0      232    375  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       0                 1       20    375  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       1                 0      111    375  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       1                 1       12    375  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                 0      142   1116  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                 1        9   1116  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 0      872   1116  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 1       93   1116  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                 0       64    375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                 1       10    375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0      246    375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 1       55    375  pers_wast        
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      469    641  pers_wast        
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       10    641  pers_wast        
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      157    641  pers_wast        
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        5    641  pers_wast        
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      551    730  pers_wast        
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       16    730  pers_wast        
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      153    730  pers_wast        
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       10    730  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1966   2056  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       56   2056  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0       33   2056  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1   2056  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      121    556  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1       18    556  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      359    556  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       58    556  pers_wast        
6-24 months   ki1135781-COHORTS          INDIA                          0                 0     2249   3931  pers_wast        
6-24 months   ki1135781-COHORTS          INDIA                          0                 1      197   3931  pers_wast        
6-24 months   ki1135781-COHORTS          INDIA                          1                 0     1292   3931  pers_wast        
6-24 months   ki1135781-COHORTS          INDIA                          1                 1      193   3931  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0       36    323  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1        1    323  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0      273    323  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1       13    323  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     1077   4426  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1       72   4426  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     2998   4426  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      279   4426  pers_wast        


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/2b8af4da-b9b6-437a-86c7-4bf978273f76/f25b5cac-d9e9-4a4a-b5d5-4a03f261a62f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2b8af4da-b9b6-437a-86c7-4bf978273f76/f25b5cac-d9e9-4a4a-b5d5-4a03f261a62f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2b8af4da-b9b6-437a-86c7-4bf978273f76/f25b5cac-d9e9-4a4a-b5d5-4a03f261a62f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2b8af4da-b9b6-437a-86c7-4bf978273f76/f25b5cac-d9e9-4a4a-b5d5-4a03f261a62f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     0                    NA                0.0793651   0.0459466   0.1127835
0-24 months   ki1000109-EE               PAKISTAN     1                    NA                0.0975610   0.0450534   0.1500686
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.0596026   0.0268592   0.0923461
0-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.0963731   0.0619791   0.1307670
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.1351351   0.0571395   0.2131308
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.1827243   0.1390096   0.2264389
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0208768   0.0080633   0.0336904
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0308642   0.0042110   0.0575174
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0282187   0.0145789   0.0418585
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0613497   0.0244850   0.0982143
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.1294964   0.0736306   0.1853622
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.1390887   0.1058460   0.1723314
0-24 months   ki1135781-COHORTS          INDIA        0                    NA                0.0805397   0.0697540   0.0913253
0-24 months   ki1135781-COHORTS          INDIA        1                    NA                0.1299663   0.1128613   0.1470713
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0626632   0.0465229   0.0788035
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0851388   0.0742362   0.0960415
0-6 months    ki1000109-EE               PAKISTAN     0                    NA                0.0722892   0.0400799   0.1044984
0-6 months    ki1000109-EE               PAKISTAN     1                    NA                0.0583333   0.0163426   0.1003241
0-6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                0.1007752   0.0487788   0.1527716
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                0.1094527   0.0789045   0.1400010
6-24 months   ki1000109-EE               PAKISTAN     0                    NA                0.0793651   0.0459466   0.1127835
6-24 months   ki1000109-EE               PAKISTAN     1                    NA                0.0975610   0.0450534   0.1500686
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.0596026   0.0268592   0.0923461
6-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.0963731   0.0619791   0.1307670
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.1351351   0.0571395   0.2131308
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.1827243   0.1390096   0.2264389
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0208768   0.0080633   0.0336904
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0308642   0.0042110   0.0575174
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0282187   0.0145789   0.0418585
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0613497   0.0244850   0.0982143
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.1294964   0.0736306   0.1853622
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.1390887   0.1058460   0.1723314
6-24 months   ki1135781-COHORTS          INDIA        0                    NA                0.0805397   0.0697540   0.0913253
6-24 months   ki1135781-COHORTS          INDIA        1                    NA                0.1299663   0.1128613   0.1470713
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0626632   0.0465229   0.0788035
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0851388   0.0742362   0.0960415


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     NA                   NA                0.0853333   0.0570192   0.1136475
0-24 months   ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.0913978   0.0593363   0.1234594
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.1733333   0.1349698   0.2116969
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0234009   0.0116889   0.0351130
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1366906   0.1081112   0.1652701
0-24 months   ki1135781-COHORTS          INDIA        NA                   NA                0.0992114   0.0898650   0.1085578
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0793041   0.0701363   0.0884719
0-6 months    ki1000109-EE               PAKISTAN     NA                   NA                0.0677507   0.0420735   0.0934278
0-6 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1073446   0.0809909   0.1336984
6-24 months   ki1000109-EE               PAKISTAN     NA                   NA                0.0853333   0.0570192   0.1136475
6-24 months   ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.0913978   0.0593363   0.1234594
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.1733333   0.1349698   0.2116969
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0234009   0.0116889   0.0351130
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1366906   0.1081112   0.1652701
6-24 months   ki1135781-COHORTS          INDIA        NA                   NA                0.0992114   0.0898650   0.1085578
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0793041   0.0701363   0.0884719


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE               PAKISTAN     1                    0                 1.2292683   0.6206867   2.434563
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.6169257   0.8882404   2.943402
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.3521595   0.7239137   2.525626
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.4783951   0.5124750   4.264894
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 2.1740798   1.0054462   4.701020
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 1.0740741   0.6559111   1.758828
0-24 months   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA        1                    0                 1.6136936   1.3374458   1.947000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.3586741   1.0210158   1.807999
0-6 months    ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE               PAKISTAN     1                    0                 0.8069444   0.3460819   1.881518
0-6 months    ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    0                 1.0861079   0.6041012   1.952703
6-24 months   ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE               PAKISTAN     1                    0                 1.2292683   0.6206867   2.434563
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.6169257   0.8882404   2.943402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.3521595   0.7239137   2.525626
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.4783951   0.5124750   4.264894
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 2.1740798   1.0054462   4.701020
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 1.0740741   0.6559111   1.758828
6-24 months   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA        1                    0                 1.6136936   1.3374458   1.947000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.3586741   1.0210158   1.807999


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0059683   -0.0144649   0.0264014
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0317952   -0.0051651   0.0687555
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0381982   -0.0335945   0.1099909
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0025241   -0.0049575   0.0100057
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0073977   -0.0014360   0.0162315
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0071942   -0.0415631   0.0559516
0-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0186717    0.0109961   0.0263474
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0166409    0.0023182   0.0309636
0-6 months    ki1000109-EE               PAKISTAN     0                    NA                -0.0045385   -0.0217616   0.0126846
0-6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0065694   -0.0390871   0.0522260
6-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0059683   -0.0144649   0.0264014
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0317952   -0.0051651   0.0687555
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0381982   -0.0335945   0.1099909
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0025241   -0.0049575   0.0100057
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0073977   -0.0014360   0.0162315
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0071942   -0.0415631   0.0559516
6-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0186717    0.0109961   0.0263474
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0166409    0.0023182   0.0309636


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0699405   -0.2019552   0.2803303
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.3478769   -0.1175046   0.6194516
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.2203742   -0.3229179   0.5405487
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.1078636   -0.2703716   0.3734846
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.2077059   -0.0672795   0.4118411
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0526316   -0.3803296   0.3497880
0-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.1882016    0.1088814   0.2604613
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.2098369    0.0082102   0.3704737
0-6 months    ki1000109-EE               PAKISTAN     0                    NA                -0.0669880   -0.3526787   0.1583639
0-6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0611995   -0.4765116   0.4030888
6-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0699405   -0.2019552   0.2803303
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.3478769   -0.1175046   0.6194516
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.2203742   -0.3229179   0.5405487
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.1078636   -0.2703716   0.3734846
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.2077059   -0.0672795   0.4118411
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0526316   -0.3803296   0.3497880
6-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.1882016    0.1088814   0.2604613
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.2098369    0.0082102   0.3704737
