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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        hdlvry    stunted   n_cell      n
----------  -------------------------  -----------------------------  -------  --------  -------  -----
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               0       75     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               1       17     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0        0     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1        0     92
Birth       ki1000108-IRC              INDIA                          0               0      337    388
Birth       ki1000108-IRC              INDIA                          0               1       44    388
Birth       ki1000108-IRC              INDIA                          1               0        6    388
Birth       ki1000108-IRC              INDIA                          1               1        1    388
Birth       ki1000109-EE               PAKISTAN                       0               0       93    238
Birth       ki1000109-EE               PAKISTAN                       0               1       68    238
Birth       ki1000109-EE               PAKISTAN                       1               0       46    238
Birth       ki1000109-EE               PAKISTAN                       1               1       31    238
Birth       ki1000304b-SAS-CompFeed    INDIA                          0               0       85   1085
Birth       ki1000304b-SAS-CompFeed    INDIA                          0               1       39   1085
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               0      692   1085
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               1      269   1085
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               0      355    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               1       36    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               0      136    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               1       12    539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0      495    732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               1       72    732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0      136    732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1       29    732
Birth       ki1113344-GMS-Nepal        NEPAL                          0               0      125    646
Birth       ki1113344-GMS-Nepal        NEPAL                          0               1       32    646
Birth       ki1113344-GMS-Nepal        NEPAL                          1               0      408    646
Birth       ki1113344-GMS-Nepal        NEPAL                          1               1       81    646
Birth       ki1135781-COHORTS          INDIA                          0               0     2613   4694
Birth       ki1135781-COHORTS          INDIA                          0               1      325   4694
Birth       ki1135781-COHORTS          INDIA                          1               0     1534   4694
Birth       ki1135781-COHORTS          INDIA                          1               1      222   4694
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               0       23    334
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               1        7    334
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0      220    334
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1       84    334
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0      420   2808
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               1      134   2808
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0     1535   2808
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1      719   2808
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               0      249    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               1      109    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0        7    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1        1    366
6 months    ki1000108-IRC              INDIA                          0               0      303    407
6 months    ki1000108-IRC              INDIA                          0               1       96    407
6 months    ki1000108-IRC              INDIA                          1               0        4    407
6 months    ki1000108-IRC              INDIA                          1               1        4    407
6 months    ki1000109-EE               PAKISTAN                       0               0      131    371
6 months    ki1000109-EE               PAKISTAN                       0               1      119    371
6 months    ki1000109-EE               PAKISTAN                       1               0       58    371
6 months    ki1000109-EE               PAKISTAN                       1               1       63    371
6 months    ki1000304b-SAS-CompFeed    INDIA                          0               0      109   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          0               1       38   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0      655   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1      289   1091
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0       45    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               1       31    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0      172    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1      132    380
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      379    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               1       71    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      129    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1       25    604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0      449    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               1      105    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      116    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1       45    715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1707   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      182   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       27   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        5   1921
6 months    ki1113344-GMS-Nepal        NEPAL                          0               0      110    528
6 months    ki1113344-GMS-Nepal        NEPAL                          0               1       19    528
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0      311    528
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1       88    528
6 months    ki1135781-COHORTS          INDIA                          0               0     2457   4699
6 months    ki1135781-COHORTS          INDIA                          0               1      443   4699
6 months    ki1135781-COHORTS          INDIA                          1               0     1323   4699
6 months    ki1135781-COHORTS          INDIA                          1               1      476   4699
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               0       34    332
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1        5    332
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0      220    332
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1       73    332
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0      860   4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1      221   4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0     2173   4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1      784   4038
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               0      101    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               1      259    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0        3    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1        5    368
24 months   ki1000108-IRC              INDIA                          0               0      234    409
24 months   ki1000108-IRC              INDIA                          0               1      167    409
24 months   ki1000108-IRC              INDIA                          1               0        3    409
24 months   ki1000108-IRC              INDIA                          1               1        5    409
24 months   ki1000109-EE               PAKISTAN                       0               0       34    166
24 months   ki1000109-EE               PAKISTAN                       0               1       78    166
24 months   ki1000109-EE               PAKISTAN                       1               0       14    166
24 months   ki1000109-EE               PAKISTAN                       1               1       40    166
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      295    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1      138    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0       93    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       52    578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0      302    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1       89    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0       80    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       43    514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        5      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0      6
24 months   ki1113344-GMS-Nepal        NEPAL                          0               0       71    456
24 months   ki1113344-GMS-Nepal        NEPAL                          0               1       47    456
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0      181    456
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1      157    456
24 months   ki1135781-COHORTS          INDIA                          0               0     1155   3556
24 months   ki1135781-COHORTS          INDIA                          0               1     1078   3556
24 months   ki1135781-COHORTS          INDIA                          1               0      377   3556
24 months   ki1135781-COHORTS          INDIA                          1               1      946   3556
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               0       21    291
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1       14    291
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0      115    291
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1      141    291
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0      689   4005
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1      344   4005
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0     1717   4005
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1     1255   4005


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
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
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
![](/tmp/713625dd-b128-4300-9857-1f9d3930e081/b1593233-bad7-49f1-a35e-40ea4f8ecd69/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/713625dd-b128-4300-9857-1f9d3930e081/b1593233-bad7-49f1-a35e-40ea4f8ecd69/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/713625dd-b128-4300-9857-1f9d3930e081/b1593233-bad7-49f1-a35e-40ea4f8ecd69/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/713625dd-b128-4300-9857-1f9d3930e081/b1593233-bad7-49f1-a35e-40ea4f8ecd69/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000109-EE               PAKISTAN                       0                    NA                0.4223602   0.3459029   0.4988176
Birth       ki1000109-EE               PAKISTAN                       1                    NA                0.4025974   0.2928268   0.5123680
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3145161   0.2442070   0.3848253
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2799168   0.2445645   0.3152691
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0920716   0.0633868   0.1207564
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0810811   0.0370642   0.1250979
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1269841   0.0995596   0.1544087
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1757576   0.1176427   0.2338725
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2038217   0.1407601   0.2668833
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1656442   0.1326685   0.1986199
Birth       ki1135781-COHORTS          INDIA                          0                    NA                0.1106195   0.0992765   0.1219625
Birth       ki1135781-COHORTS          INDIA                          1                    NA                0.1264237   0.1108785   0.1419689
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2333333   0.1228972   0.3437694
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2763158   0.2043428   0.3482888
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2418773   0.1946640   0.2890905
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3189885   0.2962561   0.3417208
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.4760000   0.4140083   0.5379917
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.5206612   0.4315278   0.6097945
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2585034   0.2268011   0.2902057
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3061441   0.2844641   0.3278240
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.4078947   0.2972611   0.5185283
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4342105   0.3784199   0.4900011
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1577778   0.1240694   0.1914862
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1623377   0.1040480   0.2206273
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1895307   0.1568715   0.2221899
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2795031   0.2101368   0.3488694
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0963473   0.0829238   0.1097708
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1562500   0.0724034   0.2400966
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1472868   0.0860732   0.2085005
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2205514   0.1798301   0.2612727
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.1527586   0.1396637   0.1658535
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2645914   0.2442055   0.2849774
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1282051   0.0052540   0.2511562
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2491468   0.1752336   0.3230600
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2044403   0.1750893   0.2337914
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2651336   0.2461554   0.2841118
24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.6964286   0.6110164   0.7818408
24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.7407407   0.6235041   0.8579774
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3187067   0.2747786   0.3626348
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3586207   0.2804912   0.4367502
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2276215   0.1860204   0.2692225
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3495935   0.2652421   0.4339449
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.3983051   0.3098791   0.4867311
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4644970   0.4112692   0.5177249
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.4827586   0.4620297   0.5034875
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.7150416   0.6907147   0.7393684
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.4000000   0.2095503   0.5904497
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5507812   0.4856834   0.6158791
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3330106   0.2956577   0.3703636
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4222746   0.4008258   0.4437233


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                0.4159664   0.3532152   0.4787176
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2838710   0.2475589   0.3201830
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0890538   0.0649864   0.1131212
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1379781   0.1129774   0.1629789
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1749226   0.1456043   0.2042409
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1165317   0.1073518   0.1257117
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2724551   0.2076543   0.3372559
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3037749   0.2834613   0.3240886
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.4905660   0.4396283   0.5415038
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2997250   0.2767096   0.3227405
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0973451   0.0840860   0.1106043
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2026515   0.1683319   0.2369711
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1955735   0.1842315   0.2069155
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2349398   0.1664503   0.3034292
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2488856   0.2328153   0.2649558
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.7108434   0.6416667   0.7800200
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4473684   0.4016814   0.4930554
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.5691789   0.5529008   0.5854569
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.5326460   0.4663548   0.5989373
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3992509   0.3804088   0.4180930


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1000109-EE               PAKISTAN                       1                    0                 0.9532086   0.6871520   1.322279
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    0                 0.8899917   0.7245584   1.093197
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.8806306   0.4709344   1.646748
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.3840909   0.9324945   2.054390
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.8126917   0.5625292   1.174104
Birth       ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                 1.1428702   0.9737860   1.341313
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.1842105   0.6662901   2.104721
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.3188031   1.0697808   1.625792
6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 1.0938260   0.8821278   1.356329
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.1842942   1.0376684   1.351639
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.0645161   0.7885142   1.437126
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.0289007   0.6775131   1.562533
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.4747116   1.0901648   1.994904
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.6217376   0.9315439   2.823306
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.4974278   0.9502539   2.359675
6 months    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 1.7320884   1.5435253   1.943687
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.9433447   0.7402346   5.101881
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.2968751   1.1054772   1.521411
24 months   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                 1.0636277   0.8706277   1.299412
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1252374   0.8695261   1.456149
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.5358546   1.1347332   2.078770
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1661841   0.9083742   1.497164
24 months   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 1.4811575   1.4021978   1.564564
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.3769531   0.8651229   2.191596
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.2680512   1.1221126   1.432970


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -0.0063939   -0.0496895   0.0369018
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0306452   -0.0861137   0.0248234
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0030178   -0.0174499   0.0114143
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0109940   -0.0035661   0.0255542
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0288991   -0.0827818   0.0249837
Birth       ki1135781-COHORTS          INDIA                          0                    NA                 0.0059123   -0.0012900   0.0131145
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0391218   -0.0892717   0.1675152
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0618977    0.0194615   0.1043338
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0145660   -0.0209082   0.0500403
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0412216    0.0115269   0.0709164
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0210526   -0.0780768   0.1201821
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0011626   -0.0160062   0.0183314
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0202595    0.0027767   0.0377424
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0009979   -0.0011525   0.0031482
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0553647   -0.0002588   0.1109882
6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0428149    0.0334094   0.0522204
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1067346   -0.0122702   0.2257395
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0444453    0.0189581   0.0699324
24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0144148   -0.0328765   0.0617061
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0100130   -0.0125168   0.0325429
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0291879    0.0062351   0.0521406
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0490633   -0.0274854   0.1256120
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0864202    0.0739698   0.0988707
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1326460   -0.0334276   0.2987197
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0662403    0.0344631   0.0980175


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -0.0153711   -0.1249902   0.0835667
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.1079545   -0.3199809   0.0700143
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0338875   -0.2090984   0.1159336
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0796794   -0.0313499   0.1787559
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1652105   -0.5169822   0.1049891
Birth       ki1135781-COHORTS          INDIA                          0                    NA                 0.0507353   -0.0130228   0.1104806
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1435897   -0.4564758   0.4964293
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2037616    0.0501249   0.3325485
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0296923   -0.0454449   0.0994293
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1375315    0.0354689   0.2287942
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0490798   -0.2125598   0.2542641
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0073148   -0.1067961   0.1096609
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0965704    0.0099200   0.1756373
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0102507   -0.0121270   0.0321337
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.2732015   -0.0566987   0.5001072
6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.2189197    0.1704333   0.2645722
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.4543064   -0.3476061   0.7790292
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1785770    0.0695188   0.2748530
24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0202785   -0.0486804   0.0847027
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0304607   -0.0405531   0.0966280
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1136557    0.0202907   0.1981232
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1096710   -0.0791822   0.2654755
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.1518332    0.1291317   0.1739428
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2490323   -0.1488662   0.5091225
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1659114    0.0817576   0.2423528
