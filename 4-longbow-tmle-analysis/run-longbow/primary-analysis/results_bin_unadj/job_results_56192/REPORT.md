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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        hdlvry    sstunted   n_cell      n  outcome_variable 
----------  -------------------------  -----------------------------  -------  ---------  -------  -----  -----------------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0       88     92  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                1        4     92  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0        0     92  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1        0     92  sstunted         
Birth       ki1000108-IRC              INDIA                          0                0      365    388  sstunted         
Birth       ki1000108-IRC              INDIA                          0                1       16    388  sstunted         
Birth       ki1000108-IRC              INDIA                          1                0        7    388  sstunted         
Birth       ki1000108-IRC              INDIA                          1                1        0    388  sstunted         
Birth       ki1000109-EE               PAKISTAN                       0                0      130    238  sstunted         
Birth       ki1000109-EE               PAKISTAN                       0                1       31    238  sstunted         
Birth       ki1000109-EE               PAKISTAN                       1                0       60    238  sstunted         
Birth       ki1000109-EE               PAKISTAN                       1                1       17    238  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                0      117   1085  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                1        7   1085  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                0      894   1085  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                1       67   1085  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                0      389    539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                1        2    539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                0      146    539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                1        2    539  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0      558    732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        9    732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0      164    732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        1    732  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          0                0      150    646  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          0                1        7    646  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          1                0      469    646  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          1                1       20    646  sstunted         
Birth       ki1135781-COHORTS          INDIA                          0                0     2855   4694  sstunted         
Birth       ki1135781-COHORTS          INDIA                          0                1       83   4694  sstunted         
Birth       ki1135781-COHORTS          INDIA                          1                0     1702   4694  sstunted         
Birth       ki1135781-COHORTS          INDIA                          1                1       54   4694  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0       30    334  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1        0    334  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0      284    334  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1       20    334  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0      520   2808  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1       34   2808  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0     2056   2808  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1      198   2808  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0      318    366  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1       40    366  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0        7    366  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1    366  sstunted         
6 months    ki1000108-IRC              INDIA                          0                0      370    407  sstunted         
6 months    ki1000108-IRC              INDIA                          0                1       29    407  sstunted         
6 months    ki1000108-IRC              INDIA                          1                0        8    407  sstunted         
6 months    ki1000108-IRC              INDIA                          1                1        0    407  sstunted         
6 months    ki1000109-EE               PAKISTAN                       0                0      198    371  sstunted         
6 months    ki1000109-EE               PAKISTAN                       0                1       52    371  sstunted         
6 months    ki1000109-EE               PAKISTAN                       1                0       93    371  sstunted         
6 months    ki1000109-EE               PAKISTAN                       1                1       28    371  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                0      141   1091  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                1        6   1091  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                0      839   1091  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                1      105   1091  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                0       69    380  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                1        7    380  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0      257    380  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1       47    380  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      443    604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1        7    604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      147    604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1        7    604  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      535    715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1       19    715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      157    715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1        4    715  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     1873   1921  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       16   1921  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0       30   1921  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        2   1921  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          0                0      127    528  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          0                1        2    528  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0      383    528  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1       16    528  sstunted         
6 months    ki1135781-COHORTS          INDIA                          0                0     2788   4699  sstunted         
6 months    ki1135781-COHORTS          INDIA                          0                1      112   4699  sstunted         
6 months    ki1135781-COHORTS          INDIA                          1                0     1680   4699  sstunted         
6 months    ki1135781-COHORTS          INDIA                          1                1      119   4699  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0       37    332  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1        2    332  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0      283    332  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1       10    332  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0     1028   4038  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1       53   4038  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     2790   4038  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1      167   4038  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0      238    368  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1      122    368  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0        6    368  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1        2    368  sstunted         
24 months   ki1000108-IRC              INDIA                          0                0      362    409  sstunted         
24 months   ki1000108-IRC              INDIA                          0                1       39    409  sstunted         
24 months   ki1000108-IRC              INDIA                          1                0        6    409  sstunted         
24 months   ki1000108-IRC              INDIA                          1                1        2    409  sstunted         
24 months   ki1000109-EE               PAKISTAN                       0                0       70    166  sstunted         
24 months   ki1000109-EE               PAKISTAN                       0                1       42    166  sstunted         
24 months   ki1000109-EE               PAKISTAN                       1                0       37    166  sstunted         
24 months   ki1000109-EE               PAKISTAN                       1                1       17    166  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      397    578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1       36    578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      129    578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       16    578  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0      364    514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1       27    514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      114    514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1        9    514  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        5      6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        1      6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        0      6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0      6  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          0                0      105    456  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          0                1       13    456  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0      305    456  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1       33    456  sstunted         
24 months   ki1135781-COHORTS          INDIA                          0                0     1819   3556  sstunted         
24 months   ki1135781-COHORTS          INDIA                          0                1      414   3556  sstunted         
24 months   ki1135781-COHORTS          INDIA                          1                0      816   3556  sstunted         
24 months   ki1135781-COHORTS          INDIA                          1                1      507   3556  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0       31    291  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1        4    291  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0      204    291  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1       52    291  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0      971   4005  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1       62   4005  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     2659   4005  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      313   4005  sstunted         


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
![](/tmp/907909cf-6c58-415c-893a-22c3e7028d0b/a6ec54fa-225b-44ae-a873-6bc19035d9fe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/907909cf-6c58-415c-893a-22c3e7028d0b/a6ec54fa-225b-44ae-a873-6bc19035d9fe/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/907909cf-6c58-415c-893a-22c3e7028d0b/a6ec54fa-225b-44ae-a873-6bc19035d9fe/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/907909cf-6c58-415c-893a-22c3e7028d0b/a6ec54fa-225b-44ae-a873-6bc19035d9fe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000109-EE               PAKISTAN     0                    NA                0.1925466   0.1315120   0.2535812
Birth       ki1000109-EE               PAKISTAN     1                    NA                0.2207792   0.1279411   0.3136174
Birth       ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.0564516   0.0274585   0.0854447
Birth       ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.0697190   0.0451096   0.0943285
Birth       ki1113344-GMS-Nepal        NEPAL        0                    NA                0.0445860   0.0122765   0.0768954
Birth       ki1113344-GMS-Nepal        NEPAL        1                    NA                0.0408998   0.0233318   0.0584678
Birth       ki1135781-COHORTS          INDIA        0                    NA                0.0282505   0.0222587   0.0342423
Birth       ki1135781-COHORTS          INDIA        1                    NA                0.0307517   0.0226759   0.0388275
Birth       kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0613718   0.0342911   0.0884525
Birth       kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0878438   0.0740822   0.1016054
6 months    ki1000109-EE               PAKISTAN     0                    NA                0.2080000   0.1576200   0.2583800
6 months    ki1000109-EE               PAKISTAN     1                    NA                0.2314050   0.1561601   0.3066498
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.0408163   0.0221750   0.0594577
6 months    ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.1112288   0.0906768   0.1317809
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.0921053   0.0270064   0.1572041
6 months    ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.1546053   0.1139117   0.1952988
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0155556   0.0041126   0.0269986
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0454545   0.0125289   0.0783802
6 months    ki1135781-COHORTS          INDIA        0                    NA                0.0386207   0.0316069   0.0456345
6 months    ki1135781-COHORTS          INDIA        1                    NA                0.0661479   0.0546617   0.0776340
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0490287   0.0351950   0.0628623
6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0564762   0.0465542   0.0663981
24 months   ki1000109-EE               PAKISTAN     0                    NA                0.3750000   0.2850695   0.4649305
24 months   ki1000109-EE               PAKISTAN     1                    NA                0.3148148   0.1905653   0.4390644
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0831409   0.0571130   0.1091688
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1103448   0.0593029   0.1613867
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0690537   0.0438979   0.0942095
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0731707   0.0271040   0.1192374
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.1101695   0.0536149   0.1667241
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.0976331   0.0659552   0.1293111
24 months   ki1135781-COHORTS          INDIA        0                    NA                0.1854008   0.1692798   0.2015218
24 months   ki1135781-COHORTS          INDIA        1                    NA                0.3832200   0.3570189   0.4094210
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0600194   0.0425780   0.0774608
24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.1053163   0.0929108   0.1177217


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000109-EE               PAKISTAN     NA                   NA                0.2016807   0.1505956   0.2527658
Birth       ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.0682028   0.0450759   0.0913296
Birth       ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.0417957   0.0263516   0.0572398
Birth       ki1135781-COHORTS          INDIA        NA                   NA                0.0291862   0.0243703   0.0340021
Birth       kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0826211   0.0705468   0.0946953
6 months    ki1000109-EE               PAKISTAN     NA                   NA                0.2156334   0.1737285   0.2575383
6 months    ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.1017415   0.0806841   0.1227990
6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.1421053   0.1069532   0.1772573
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0231788   0.0111688   0.0351888
6 months    ki1135781-COHORTS          INDIA        NA                   NA                0.0491594   0.0429771   0.0553417
6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0544824   0.0460698   0.0628950
24 months   ki1000109-EE               PAKISTAN     NA                   NA                0.3554217   0.2823892   0.4284541
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0700389   0.0479542   0.0921236
24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1008772   0.0732047   0.1285497
24 months   ki1135781-COHORTS          INDIA        NA                   NA                0.2589989   0.2445981   0.2733997
24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0936330   0.0833093   0.1039566


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1000109-EE               PAKISTAN     1                    0                 1.1466276   0.6772127   1.941421
Birth       ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.2350230   0.7402466   2.060505
Birth       ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal        NEPAL        1                    0                 0.9173240   0.3950715   2.129952
Birth       ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA        1                    0                 1.0885364   0.7766770   1.525617
Birth       kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.4313378   0.8908969   2.299624
6 months    ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000109-EE               PAKISTAN     1                    0                 1.1125238   0.7416854   1.668779
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA        1                    0                 2.7251056   1.6370778   4.536254
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.6785713   0.7895723   3.568516
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 2.9220779   1.0407048   8.204574
6 months    ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA        1                    0                 1.7127571   1.3322122   2.202004
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.1519005   0.8360712   1.587036
24 months   ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1000109-EE               PAKISTAN     1                    0                 0.8395062   0.5290019   1.332265
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.3272031   0.7592136   2.320122
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.0596206   0.5119815   2.193040
24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 0.8862085   0.4828319   1.626581
24 months   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA        1                    0                 2.0669811   1.8505373   2.308741
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.7547052   1.2846289   2.396794


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000109-EE               PAKISTAN     0                    NA                 0.0091341   -0.0268507   0.0451189
Birth       ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0117512   -0.0152182   0.0387205
Birth       ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0027903   -0.0306294   0.0250488
Birth       ki1135781-COHORTS          INDIA        0                    NA                 0.0009357   -0.0028263   0.0046977
Birth       kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0212492   -0.0035135   0.0460120
6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0076334   -0.0219213   0.0371882
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0609252    0.0357423   0.0861081
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0500000   -0.0114686   0.1114686
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0076233   -0.0013249   0.0165714
6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.0105387    0.0053720   0.0157054
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0054537   -0.0065285   0.0174360
24 months   ki1000109-EE               PAKISTAN     0                    NA                -0.0195783   -0.0696582   0.0305015
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0068245   -0.0075810   0.0212300
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0009852   -0.0115760   0.0135464
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0092923   -0.0573430   0.0387584
24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0735981    0.0617289   0.0854672
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0336136    0.0178279   0.0493993


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000109-EE               PAKISTAN     0                    NA                 0.0452899   -0.1506663   0.2078751
Birth       ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.1722973   -0.3094683   0.4768169
Birth       ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0667610   -0.9909847   0.4284340
Birth       ki1135781-COHORTS          INDIA        0                    NA                 0.0320591   -0.1056968   0.1526524
Birth       kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.2571891   -0.1131316   0.5043102
6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0354000   -0.1117823   0.1630977
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.5988233    0.3630716   0.7473142
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.3518518   -0.2498734   0.6638891
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.3288889   -0.1267356   0.6002699
6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.2143783    0.1056046   0.3099232
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.1001009   -0.1474730   0.2942593
24 months   ki1000109-EE               PAKISTAN     0                    NA                -0.0550847   -0.2059140   0.0768796
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0758572   -0.0977956   0.2220410
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0140665   -0.1825711   0.1780073
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0921149   -0.6884397   0.2935993
24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.2841637    0.2383095   0.3272574
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.3589932    0.1682622   0.5059865
