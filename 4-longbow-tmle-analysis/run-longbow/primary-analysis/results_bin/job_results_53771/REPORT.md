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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        hdlvry    pers_wast   n_cell      n
------------  -------------------------  -----------------------------  -------  ----------  -------  -----
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      339    370
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1       23    370
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        8    370
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        0    370
0-24 months   ki1000108-IRC              INDIA                          0                 0      354    410
0-24 months   ki1000108-IRC              INDIA                          0                 1       48    410
0-24 months   ki1000108-IRC              INDIA                          1                 0        8    410
0-24 months   ki1000108-IRC              INDIA                          1                 1        0    410
0-24 months   ki1000109-EE               PAKISTAN                       0                 0      232    375
0-24 months   ki1000109-EE               PAKISTAN                       0                 1       20    375
0-24 months   ki1000109-EE               PAKISTAN                       1                 0      111    375
0-24 months   ki1000109-EE               PAKISTAN                       1                 1       12    375
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                 0      142   1116
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                 1        9   1116
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 0      872   1116
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 1       93   1116
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                 0       64    375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                 1       10    375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0      246    375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 1       55    375
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      469    641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       10    641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      157    641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        5    641
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      551    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       16    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      153    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       10    730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1966   2056
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       56   2056
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0       33   2056
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1   2056
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      121    556
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1       18    556
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      359    556
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       58    556
0-24 months   ki1135781-COHORTS          INDIA                          0                 0     2249   3931
0-24 months   ki1135781-COHORTS          INDIA                          0                 1      197   3931
0-24 months   ki1135781-COHORTS          INDIA                          1                 0     1292   3931
0-24 months   ki1135781-COHORTS          INDIA                          1                 1      193   3931
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0       36    323
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1        1    323
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0      273    323
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1       13    323
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     1077   4426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1       72   4426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     2998   4426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      279   4426
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      299    355
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1       49    355
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        7    355
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        0    355
0-6 months    ki1000108-IRC              INDIA                          0                 0      331    402
0-6 months    ki1000108-IRC              INDIA                          0                 1       63    402
0-6 months    ki1000108-IRC              INDIA                          1                 0        7    402
0-6 months    ki1000108-IRC              INDIA                          1                 1        1    402
0-6 months    ki1000109-EE               PAKISTAN                       0                 0      231    369
0-6 months    ki1000109-EE               PAKISTAN                       0                 1       18    369
0-6 months    ki1000109-EE               PAKISTAN                       1                 0      113    369
0-6 months    ki1000109-EE               PAKISTAN                       1                 1        7    369
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0      466    638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1       11    638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      158    638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        3    638
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      202    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        3    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       43    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        2    250
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1876   1956
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       48   1956
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0       31   1956
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1   1956
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      116    531
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1       13    531
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0      358    531
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       44    531
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      339    370
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1       23    370
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        8    370
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        0    370
6-24 months   ki1000108-IRC              INDIA                          0                 0      354    410
6-24 months   ki1000108-IRC              INDIA                          0                 1       48    410
6-24 months   ki1000108-IRC              INDIA                          1                 0        8    410
6-24 months   ki1000108-IRC              INDIA                          1                 1        0    410
6-24 months   ki1000109-EE               PAKISTAN                       0                 0      232    375
6-24 months   ki1000109-EE               PAKISTAN                       0                 1       20    375
6-24 months   ki1000109-EE               PAKISTAN                       1                 0      111    375
6-24 months   ki1000109-EE               PAKISTAN                       1                 1       12    375
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                 0      142   1116
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                 1        9   1116
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 0      872   1116
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 1       93   1116
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                 0       64    375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                 1       10    375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0      246    375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 1       55    375
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      469    641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       10    641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      157    641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        5    641
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      551    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       16    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      153    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       10    730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1966   2056
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       56   2056
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0       33   2056
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1   2056
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      121    556
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1       18    556
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      359    556
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       58    556
6-24 months   ki1135781-COHORTS          INDIA                          0                 0     2249   3931
6-24 months   ki1135781-COHORTS          INDIA                          0                 1      197   3931
6-24 months   ki1135781-COHORTS          INDIA                          1                 0     1292   3931
6-24 months   ki1135781-COHORTS          INDIA                          1                 1      193   3931
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0       36    323
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1        1    323
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0      273    323
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1       13    323
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     1077   4426
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1       72   4426
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     2998   4426
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      279   4426


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




# Results Detail

## Results Plots
![](/tmp/c36af178-664d-4c09-992a-c4b665d74907/3c884737-caeb-466c-88ee-4724658d4b90/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c36af178-664d-4c09-992a-c4b665d74907/3c884737-caeb-466c-88ee-4724658d4b90/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c36af178-664d-4c09-992a-c4b665d74907/3c884737-caeb-466c-88ee-4724658d4b90/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c36af178-664d-4c09-992a-c4b665d74907/3c884737-caeb-466c-88ee-4724658d4b90/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     0                    NA                0.0794890   0.0460255   0.1129525
0-24 months   ki1000109-EE               PAKISTAN     1                    NA                0.0977956   0.0446096   0.1509816
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.0596026   0.0268592   0.0923461
0-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.0963731   0.0619791   0.1307670
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.1427651   0.0599573   0.2255730
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.1809100   0.1372086   0.2246113
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0208768   0.0080633   0.0336904
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0308642   0.0042110   0.0575174
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0278720   0.0142032   0.0415407
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0546116   0.0170419   0.0921813
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.1323688   0.0746529   0.1900846
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.1356291   0.1028607   0.1683975
0-24 months   ki1135781-COHORTS          INDIA        0                    NA                0.0869886   0.0752252   0.0987521
0-24 months   ki1135781-COHORTS          INDIA        1                    NA                0.1197203   0.1024147   0.1370259
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0658075   0.0481887   0.0834264
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0843184   0.0732361   0.0954006
0-6 months    ki1000109-EE               PAKISTAN     0                    NA                0.0722892   0.0400799   0.1044984
0-6 months    ki1000109-EE               PAKISTAN     1                    NA                0.0583333   0.0163426   0.1003241
0-6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                0.0981454   0.0442345   0.1520563
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                0.1084812   0.0780566   0.1389059
6-24 months   ki1000109-EE               PAKISTAN     0                    NA                0.0800544   0.0467519   0.1133570
6-24 months   ki1000109-EE               PAKISTAN     1                    NA                0.1053512   0.0525798   0.1581226
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.0596026   0.0268592   0.0923461
6-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.0963731   0.0619791   0.1307670
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.1400427   0.0560847   0.2240008
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.1805551   0.1370325   0.2240778
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0208768   0.0080633   0.0336904
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0308642   0.0042110   0.0575174
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0279800   0.0143152   0.0416449
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0552684   0.0178660   0.0926707
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.1304010   0.0730604   0.1877416
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.1356530   0.1029142   0.1683917
6-24 months   ki1135781-COHORTS          INDIA        0                    NA                0.0874887   0.0756157   0.0993616
6-24 months   ki1135781-COHORTS          INDIA        1                    NA                0.1166278   0.0999609   0.1332946
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0660179   0.0485160   0.0835198
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0842922   0.0731945   0.0953898


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
0-24 months   ki1000109-EE               PAKISTAN     1                    0                 1.2303034   0.6175434   2.451077
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.6169257   0.8882404   2.943402
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.2671857   0.6768315   2.372466
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.4783951   0.5124750   4.264894
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.9593738   0.8412013   4.563885
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 1.0246311   0.6214654   1.689344
0-24 months   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA        1                    0                 1.3762751   1.1293802   1.677144
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.2812872   0.9531738   1.722348
0-6 months    ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE               PAKISTAN     1                    0                 0.8069444   0.3460819   1.881518
0-6 months    ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    0                 1.1053113   0.5961628   2.049294
6-24 months   ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE               PAKISTAN     1                    0                 1.3159947   0.6857872   2.525335
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.6169257   0.8882404   2.943402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.2892861   0.6770015   2.455325
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.4783951   0.5124750   4.264894
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.9752808   0.8570674   4.552424
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 1.0402755   0.6287250   1.721219
6-24 months   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA        1                    0                 1.3330614   1.0949936   1.622889
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.2768085   0.9519026   1.712612


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0058443   -0.0146997   0.0263883
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0317952   -0.0051651   0.0687555
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0305682   -0.0456484   0.1067848
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0025241   -0.0049575   0.0100057
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0077445   -0.0011302   0.0166191
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0043219   -0.0465914   0.0552352
0-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0122227    0.0037591   0.0206864
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0134966   -0.0021253   0.0291185
0-6 months    ki1000109-EE               PAKISTAN     0                    NA                -0.0045385   -0.0217616   0.0126846
0-6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0091992   -0.0389130   0.0573115
6-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0052789   -0.0152499   0.0258077
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0317952   -0.0051651   0.0687555
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0332906   -0.0439583   0.1105395
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0025241   -0.0049575   0.0100057
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0076364   -0.0012228   0.0164956
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0062896   -0.0443808   0.0569601
6-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0117227    0.0031658   0.0202796
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0132862   -0.0022502   0.0288227


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0684878   -0.2049936   0.2799007
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.3478769   -0.1175046   0.6194516
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.1763550   -0.4028607   0.5164230
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.1078636   -0.2703716   0.3734846
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.2174410   -0.0598317   0.4221738
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0316181   -0.4224514   0.3407412
0-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.1231990    0.0344012   0.2038309
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.1701875   -0.0518530   0.3453565
0-6 months    ki1000109-EE               PAKISTAN     0                    NA                -0.0669880   -0.3526787   0.1583639
0-6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0856981   -0.4921613   0.4397738
6-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0618623   -0.2108958   0.2731807
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.3478769   -0.1175046   0.6194516
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.1920612   -0.4012790   0.5341648
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.1078636   -0.2703716   0.3734846
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.2144072   -0.0621250   0.4189422
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0460137   -0.4067238   0.3530430
6-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.1181592    0.0282662   0.1997363
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.1675354   -0.0529132   0.3418287
