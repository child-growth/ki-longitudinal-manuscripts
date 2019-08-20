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
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
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
0-24 months   ki1000109-EE               PAKISTAN                       0                 0      235    375
0-24 months   ki1000109-EE               PAKISTAN                       0                 1       17    375
0-24 months   ki1000109-EE               PAKISTAN                       1                 0      113    375
0-24 months   ki1000109-EE               PAKISTAN                       1                 1       10    375
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                 0      142   1116
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                 1        9   1116
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 0      872   1116
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 1       93   1116
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                 0       64    375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                 1       10    375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0      246    375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 1       55    375
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      469    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       10    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      156    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        5    640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      551    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       16    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      153    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       10    730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1966   2056
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       56   2056
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0       33   2056
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1   2056
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      118    551
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1       18    551
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      352    551
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       63    551
0-24 months   ki1135781-COHORTS          INDIA                          0                 0     2249   3931
0-24 months   ki1135781-COHORTS          INDIA                          0                 1      197   3931
0-24 months   ki1135781-COHORTS          INDIA                          1                 0     1292   3931
0-24 months   ki1135781-COHORTS          INDIA                          1                 1      193   3931
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0       36    322
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1        1    322
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0      273    322
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1       12    322
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
0-6 months    ki1000109-EE               PAKISTAN                       0                 0      226    364
0-6 months    ki1000109-EE               PAKISTAN                       0                 1       20    364
0-6 months    ki1000109-EE               PAKISTAN                       1                 0      111    364
0-6 months    ki1000109-EE               PAKISTAN                       1                 1        7    364
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0      466    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1       11    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      157    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        3    637
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      202    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        3    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       43    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        2    250
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1876   1956
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       48   1956
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0       31   1956
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1   1956
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      106    507
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1       14    507
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0      341    507
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       46    507
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      339    370
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1       23    370
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        8    370
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        0    370
6-24 months   ki1000108-IRC              INDIA                          0                 0      354    410
6-24 months   ki1000108-IRC              INDIA                          0                 1       48    410
6-24 months   ki1000108-IRC              INDIA                          1                 0        8    410
6-24 months   ki1000108-IRC              INDIA                          1                 1        0    410
6-24 months   ki1000109-EE               PAKISTAN                       0                 0      235    375
6-24 months   ki1000109-EE               PAKISTAN                       0                 1       17    375
6-24 months   ki1000109-EE               PAKISTAN                       1                 0      113    375
6-24 months   ki1000109-EE               PAKISTAN                       1                 1       10    375
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                 0      142   1116
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                 1        9   1116
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 0      872   1116
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 1       93   1116
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                 0       64    375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                 1       10    375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0      246    375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 1       55    375
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      469    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       10    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      156    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        5    640
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      551    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       16    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      153    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       10    730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1966   2056
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       56   2056
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0       33   2056
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1   2056
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      118    551
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1       18    551
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      352    551
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       63    551
6-24 months   ki1135781-COHORTS          INDIA                          0                 0     2249   3931
6-24 months   ki1135781-COHORTS          INDIA                          0                 1      197   3931
6-24 months   ki1135781-COHORTS          INDIA                          1                 0     1292   3931
6-24 months   ki1135781-COHORTS          INDIA                          1                 1      193   3931
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0       36    322
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1        1    322
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0      273    322
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1       12    322
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
![](/tmp/2660833d-64c0-41d7-9e72-e3dcd0331909/2970a219-cb7e-4137-a4da-8676265be4cf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2660833d-64c0-41d7-9e72-e3dcd0331909/2970a219-cb7e-4137-a4da-8676265be4cf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2660833d-64c0-41d7-9e72-e3dcd0331909/2970a219-cb7e-4137-a4da-8676265be4cf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2660833d-64c0-41d7-9e72-e3dcd0331909/2970a219-cb7e-4137-a4da-8676265be4cf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     0                    NA                0.0699830   0.0389042   0.1010619
0-24 months   ki1000109-EE               PAKISTAN     1                    NA                0.0876527   0.0396902   0.1356152
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.0596026   0.0268592   0.0923461
0-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.0963731   0.0619791   0.1307670
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.1469850   0.0601865   0.2337834
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.1790805   0.1356323   0.2225288
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0208768   0.0080632   0.0336904
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0310559   0.0042398   0.0578720
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0281558   0.0145041   0.0418074
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0599205   0.0226780   0.0971631
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.1357607   0.0761270   0.1953944
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.1467459   0.1128738   0.1806179
0-24 months   ki1135781-COHORTS          INDIA        0                    NA                0.0871022   0.0753498   0.0988546
0-24 months   ki1135781-COHORTS          INDIA        1                    NA                0.1175315   0.1006528   0.1344101
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0652925   0.0482754   0.0823096
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0844404   0.0734767   0.0954041
0-6 months    ki1000109-EE               PAKISTAN     0                    NA                0.0813008   0.0471019   0.1154997
0-6 months    ki1000109-EE               PAKISTAN     1                    NA                0.0593220   0.0166412   0.1020029
0-6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                0.1149001   0.0557187   0.1740816
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                0.1174466   0.0853128   0.1495804
6-24 months   ki1000109-EE               PAKISTAN     0                    NA                0.0709060   0.0398189   0.1019931
6-24 months   ki1000109-EE               PAKISTAN     1                    NA                0.0945918   0.0466645   0.1425190
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.0596026   0.0268592   0.0923461
6-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.0963731   0.0619791   0.1307670
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.1415274   0.0563819   0.2266730
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.1813192   0.1376069   0.2250315
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0208768   0.0080632   0.0336904
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0310559   0.0042398   0.0578720
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0281486   0.0144767   0.0418205
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0573456   0.0200632   0.0946281
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.1339821   0.0755743   0.1923899
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.1474954   0.1134145   0.1815762
6-24 months   ki1135781-COHORTS          INDIA        0                    NA                0.0874207   0.0755791   0.0992623
6-24 months   ki1135781-COHORTS          INDIA        1                    NA                0.1183394   0.1013008   0.1353781
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0660914   0.0487887   0.0833940
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0844963   0.0733628   0.0956297


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     NA                   NA                0.0720000   0.0458029   0.0981971
0-24 months   ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.0913978   0.0593363   0.1234594
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.1733333   0.1349698   0.2116969
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0234375   0.0117074   0.0351676
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1470054   0.1174112   0.1765996
0-24 months   ki1135781-COHORTS          INDIA        NA                   NA                0.0992114   0.0898650   0.1085578
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0793041   0.0701363   0.0884719
0-6 months    ki1000109-EE               PAKISTAN     NA                   NA                0.0741758   0.0472177   0.1011340
0-6 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1183432   0.0901986   0.1464877
6-24 months   ki1000109-EE               PAKISTAN     NA                   NA                0.0720000   0.0458029   0.0981971
6-24 months   ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.0913978   0.0593363   0.1234594
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.1733333   0.1349698   0.2116969
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0234375   0.0117074   0.0351676
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1470054   0.1174112   0.1765996
6-24 months   ki1135781-COHORTS          INDIA        NA                   NA                0.0992114   0.0898650   0.1085578
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0793041   0.0701363   0.0884719


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   ki1000109-EE               PAKISTAN     0                    0                 1.000000   1.0000000   1.000000
0-24 months   ki1000109-EE               PAKISTAN     1                    0                 1.252485   0.6181739   2.537665
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.616926   0.8882404   2.943402
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.218360   0.6444851   2.303234
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.487578   0.5156933   4.291091
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 2.128179   0.9672335   4.682579
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 1.080916   0.6560832   1.780839
0-24 months   ki1135781-COHORTS          INDIA        0                    0                 1.000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA        1                    0                 1.349351   1.1082391   1.642921
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.293262   0.9681390   1.727570
0-6 months    ki1000109-EE               PAKISTAN     0                    0                 1.000000   1.0000000   1.000000
0-6 months    ki1000109-EE               PAKISTAN     1                    0                 0.729661   0.3170816   1.679080
0-6 months    ki1113344-GMS-Nepal        NEPAL        0                    0                 1.000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    0                 1.022163   0.5701529   1.832520
6-24 months   ki1000109-EE               PAKISTAN     0                    0                 1.000000   1.0000000   1.000000
6-24 months   ki1000109-EE               PAKISTAN     1                    0                 1.334045   0.6815644   2.611163
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.616926   0.8882404   2.943402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.281160   0.6711763   2.445512
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.487578   0.5156933   4.291091
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 2.037247   0.9043602   4.589294
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 1.100859   0.6705134   1.807407
6-24 months   ki1135781-COHORTS          INDIA        0                    0                 1.000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA        1                    0                 1.353677   1.1112481   1.648994
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.278477   0.9550536   1.711426


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0020170   -0.0170929   0.0211268
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0317952   -0.0051651   0.0687555
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0263484   -0.0534607   0.1061574
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0025607   -0.0049237   0.0100450
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0074607   -0.0013819   0.0163032
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0112447   -0.0420932   0.0645827
0-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0121092    0.0036418   0.0205766
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0140116   -0.0011159   0.0291390
0-6 months    ki1000109-EE               PAKISTAN     0                    NA                -0.0071250   -0.0248864   0.0106364
0-6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0034431   -0.0491769   0.0560630
6-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0010940   -0.0179564   0.0201445
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0317952   -0.0051651   0.0687555
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0318059   -0.0464837   0.1100955
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0025607   -0.0049237   0.0100450
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0074679   -0.0013845   0.0163202
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0130234   -0.0390831   0.0651298
6-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0117907    0.0032697   0.0203116
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0132128   -0.0021729   0.0285985


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0280134   -0.2762866   0.2597604
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.3478769   -0.1175046   0.6194516
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.1520099   -0.4587012   0.5070359
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.1092554   -0.2683734   0.3744540
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.2094726   -0.0660478   0.4137846
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0764920   -0.3672351   0.3762104
0-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.1220545    0.0332465   0.2027044
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.1766819   -0.0371920   0.3464539
0-6 months    ki1000109-EE               PAKISTAN     0                    NA                -0.0960554   -0.3610553   0.1173486
0-6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0290939   -0.5347260   0.3857804
6-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0151946   -0.2878231   0.2469139
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.3478769   -0.1175046   0.6194516
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.1834955   -0.4187563   0.5300957
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.1092554   -0.2683734   0.3744540
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.2096743   -0.0664264   0.4142919
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0885910   -0.3437926   0.3818493
6-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.1188439    0.0293594   0.2000787
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.1666088   -0.0512046   0.3392904
