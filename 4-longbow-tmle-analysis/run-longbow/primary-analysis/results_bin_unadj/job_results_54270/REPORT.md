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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        hdlvry    ever_co   n_cell      n
------------  -------------------------  -----------------------------  -------  --------  -------  -----
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               0      279    370
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               1       83    370
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0        7    370
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1        1    370
0-24 months   ki1000108-IRC              INDIA                          0               0      328    410
0-24 months   ki1000108-IRC              INDIA                          0               1       74    410
0-24 months   ki1000108-IRC              INDIA                          1               0        6    410
0-24 months   ki1000108-IRC              INDIA                          1               1        2    410
0-24 months   ki1000109-EE               PAKISTAN                       0               0      143    377
0-24 months   ki1000109-EE               PAKISTAN                       0               1      110    377
0-24 months   ki1000109-EE               PAKISTAN                       1               0       65    377
0-24 months   ki1000109-EE               PAKISTAN                       1               1       59    377
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0               0      140   1232
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0               1       24   1232
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1               0      795   1232
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1               1      273   1232
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               0       55    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               1       26    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1               0      208    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1               1      129    418
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      456    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1       63    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      154    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       27    700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0      545    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1       45    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      142    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       26    758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     2121   2274
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      113   2274
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       38   2274
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        2   2274
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0               0      118    637
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0               1       38    637
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1               0      335    637
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1               1      146    637
0-24 months   ki1135781-COHORTS          INDIA                          0               0     2904   5089
0-24 months   ki1135781-COHORTS          INDIA                          0               1      232   5089
0-24 months   ki1135781-COHORTS          INDIA                          1               0     1679   5089
0-24 months   ki1135781-COHORTS          INDIA                          1               1      274   5089
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               0       40    350
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1        2    350
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0      276    350
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1       32    350
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0     1007   4501
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1      164   4501
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0     2757   4501
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1      573   4501
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               0      327    365
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               1       31    365
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0        7    365
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1        0    365
0-6 months    ki1000108-IRC              INDIA                          0               0      377    409
0-6 months    ki1000108-IRC              INDIA                          0               1       24    409
0-6 months    ki1000108-IRC              INDIA                          1               0        7    409
0-6 months    ki1000108-IRC              INDIA                          1               1        1    409
0-6 months    ki1000109-EE               PAKISTAN                       0               0      215    377
0-6 months    ki1000109-EE               PAKISTAN                       0               1       38    377
0-6 months    ki1000109-EE               PAKISTAN                       1               0      106    377
0-6 months    ki1000109-EE               PAKISTAN                       1               1       18    377
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0               0      159   1226
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0               1        4   1226
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0      985   1226
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1       78   1226
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0       77    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               1        4    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0      307    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1       28    416
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      497    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0               1       22    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      173    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1        8    700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0      581    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               1        9    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      160    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1        8    758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     2216   2274
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1       18   2274
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       39   2274
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        1   2274
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0               0      150    637
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0               1        6    637
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1               0      456    637
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1               1       25    637
0-6 months    ki1135781-COHORTS          INDIA                          0               0     2958   4929
0-6 months    ki1135781-COHORTS          INDIA                          0               1       77   4929
0-6 months    ki1135781-COHORTS          INDIA                          1               0     1837   4929
0-6 months    ki1135781-COHORTS          INDIA                          1               1       57   4929
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               0       39    348
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1        2    348
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0      291    348
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1       16    348
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0     1124   4456
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1       36   4456
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0     3211   4456
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1       85   4456
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               0      295    370
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               1       67    370
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0        7    370
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1        1    370
6-24 months   ki1000108-IRC              INDIA                          0               0      340    410
6-24 months   ki1000108-IRC              INDIA                          0               1       62    410
6-24 months   ki1000108-IRC              INDIA                          1               0        6    410
6-24 months   ki1000108-IRC              INDIA                          1               1        2    410
6-24 months   ki1000109-EE               PAKISTAN                       0               0      147    370
6-24 months   ki1000109-EE               PAKISTAN                       0               1      101    370
6-24 months   ki1000109-EE               PAKISTAN                       1               0       68    370
6-24 months   ki1000109-EE               PAKISTAN                       1               1       54    370
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0               0      129   1128
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0               1       24   1128
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1               0      727   1128
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1               1      248   1128
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               0       55    401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               1       24    401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1               0      201    401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1               1      121    401
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      407    614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1       52    614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      132    614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       23    614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0      528    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1       39    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      139    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       24    730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1772   1911
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      108   1911
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       30   1911
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        1   1911
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0               0      100    549
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0               1       36    549
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1               0      273    549
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1               1      140    549
6-24 months   ki1135781-COHORTS          INDIA                          0               0     2728   4740
6-24 months   ki1135781-COHORTS          INDIA                          0               1      195   4740
6-24 months   ki1135781-COHORTS          INDIA                          1               0     1563   4740
6-24 months   ki1135781-COHORTS          INDIA                          1               1      254   4740
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               0       38    337
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1        1    337
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0      277    337
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1       21    337
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0     1028   4492
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1      140   4492
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0     2798   4492
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1      526   4492


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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/a9b06409-4521-4a22-8c72-83f0299d25f0/5ce01f93-c87a-4329-bf8e-e5ab491e0eaf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a9b06409-4521-4a22-8c72-83f0299d25f0/5ce01f93-c87a-4329-bf8e-e5ab491e0eaf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a9b06409-4521-4a22-8c72-83f0299d25f0/5ce01f93-c87a-4329-bf8e-e5ab491e0eaf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a9b06409-4521-4a22-8c72-83f0299d25f0/5ce01f93-c87a-4329-bf8e-e5ab491e0eaf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     0                    NA                0.4347826   0.3736168   0.4959484
0-24 months   ki1000109-EE               PAKISTAN     1                    NA                0.4758065   0.3877877   0.5638252
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.1463415   0.0836287   0.2090543
0-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.2556180   0.2226745   0.2885614
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.3209877   0.2191968   0.4227785
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.3827893   0.3308316   0.4347470
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.1213873   0.0932709   0.1495037
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1491713   0.0972335   0.2011090
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0762712   0.0548393   0.0977031
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1547619   0.1000349   0.2094889
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.2435897   0.1761781   0.3110014
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.3035343   0.2624127   0.3446559
0-24 months   ki1135781-COHORTS          INDIA        0                    NA                0.0739796   0.0648180   0.0831411
0-24 months   ki1135781-COHORTS          INDIA        1                    NA                0.1402970   0.1248928   0.1557011
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.1400512   0.1150197   0.1650828
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.1720721   0.1579549   0.1861893
0-6 months    ki1000109-EE               PAKISTAN     0                    NA                0.1501976   0.1061163   0.1942790
0-6 months    ki1000109-EE               PAKISTAN     1                    NA                0.1451613   0.0830770   0.2072455
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0423892   0.0250433   0.0597351
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0441989   0.0142343   0.0741635
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0152542   0.0053581   0.0251504
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0476190   0.0153953   0.0798428
0-6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                0.0384615   0.0082604   0.0686627
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                0.0519751   0.0321221   0.0718280
0-6 months    ki1135781-COHORTS          INDIA        0                    NA                0.0253707   0.0197757   0.0309657
0-6 months    ki1135781-COHORTS          INDIA        1                    NA                0.0300950   0.0223999   0.0377901
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0310345   0.0185864   0.0434826
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0257888   0.0194189   0.0321588
6-24 months   ki1000109-EE               PAKISTAN     0                    NA                0.4072581   0.3460262   0.4684899
6-24 months   ki1000109-EE               PAKISTAN     1                    NA                0.4426230   0.3543663   0.5308796
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.1568627   0.0802387   0.2334868
6-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.2543590   0.2196692   0.2890487
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.3037975   0.2022576   0.4053373
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.3757764   0.3228104   0.4287424
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.1132898   0.0842708   0.1423087
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1483871   0.0923784   0.2043958
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0687831   0.0479372   0.0896290
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1472393   0.0928044   0.2016742
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.2647059   0.1904917   0.3389201
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.3389831   0.2932885   0.3846776
6-24 months   ki1135781-COHORTS          INDIA        0                    NA                0.0667123   0.0576656   0.0757590
6-24 months   ki1135781-COHORTS          INDIA        1                    NA                0.1397909   0.1238446   0.1557371
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.1198630   0.0973150   0.1424110
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.1582431   0.1444185   0.1720677


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     NA                   NA                0.4482759   0.3980083   0.4985434
0-24 months   ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.2410714   0.1975050   0.2846379
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.3708134   0.3244530   0.4171738
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.2888540   0.2536300   0.3240780
0-24 months   ki1135781-COHORTS          INDIA        NA                   NA                0.0994301   0.0912079   0.1076524
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.1637414   0.1510998   0.1763830
0-6 months    ki1000109-EE               PAKISTAN     NA                   NA                0.1485411   0.1125944   0.1844878
0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0224274   0.0118796   0.0329753
0-6 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.0486656   0.0319433   0.0653880
0-6 months    ki1135781-COHORTS          INDIA        NA                   NA                0.0271860   0.0226456   0.0317265
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0271544   0.0212424   0.0330664
6-24 months   ki1000109-EE               PAKISTAN     NA                   NA                0.4189189   0.3685783   0.4692595
6-24 months   ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.2411348   0.1953341   0.2869354
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.3615960   0.3145115   0.4086805
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.3205829   0.2815081   0.3596576
6-24 months   ki1135781-COHORTS          INDIA        NA                   NA                0.0947257   0.0863884   0.1030631
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.1482636   0.1364361   0.1600910


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE               PAKISTAN     1                    0                 1.0943548   0.8674133   1.380671
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.7467228   1.1931738   2.557080
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.1925360   0.8446242   1.683757
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.2288871   0.8089054   1.866922
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 2.0291005   1.2916517   3.187584
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 1.2460882   0.9156559   1.695763
0-24 months   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA        1                    0                 1.8964281   1.6071601   2.237761
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.2286366   1.0138359   1.488947
0-6 months    ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE               PAKISTAN     1                    0                 0.9664686   0.5753294   1.623525
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.0426921   0.4723343   2.301774
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 3.1216931   1.2225460   7.971044
0-6 months    ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    0                 1.3513514   0.5643390   3.235910
0-6 months    ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA        1                    0                 1.1862135   0.8462921   1.662668
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    0                 0.8309736   0.5270989   1.310033
6-24 months   ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE               PAKISTAN     1                    0                 1.0868366   0.8466599   1.395145
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.6215385   1.0780601   2.438998
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.2369306   0.8606157   1.777794
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.3098015   0.8300390   2.066867
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 2.1406324   1.3271750   3.452677
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 1.2806026   0.9382338   1.747905
6-24 months   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA        1                    0                 2.0954292   1.7551471   2.501684
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.3201994   1.0732071   1.624036


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0134933   -0.0218149   0.0488014
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0947300    0.0498795   0.1395804
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0498257   -0.0423426   0.1419941
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0071841   -0.0081136   0.0224819
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0173964    0.0041646   0.0306282
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0452643   -0.0143953   0.1049238
0-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0254506    0.0185155   0.0323856
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0236902    0.0029616   0.0444187
0-6 months    ki1000109-EE               PAKISTAN     0                    NA                -0.0016565   -0.0267017   0.0233887
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0004679   -0.0084848   0.0094207
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0071732   -0.0003591   0.0147055
0-6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0102041   -0.0170906   0.0374988
0-6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.0018154   -0.0018411   0.0054718
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                -0.0038801   -0.0139095   0.0061494
6-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0116609   -0.0237986   0.0471203
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0842720    0.0366358   0.1319082
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0577985   -0.0342061   0.1498032
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0088601   -0.0071097   0.0248298
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0175183    0.0042886   0.0307480
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0558770   -0.0097415   0.1214955
6-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0280135    0.0209131   0.0351138
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0284006    0.0088375   0.0479636


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0301003   -0.0519957   0.1057897
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.3929539    0.1567179   0.5630111
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.1343688   -0.1535649   0.3504332
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0558767   -0.0705282   0.1673560
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.1857245    0.0374873   0.3111316
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.1567029   -0.0769704   0.3396755
0-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.2559641    0.1858442   0.3200449
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.1446803    0.0067571   0.2634512
0-6 months    ki1000109-EE               PAKISTAN     0                    NA                -0.0111519   -0.1946161   0.1441366
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0109184   -0.2216378   0.1992043
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.3198405   -0.0594838   0.5633562
0-6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.2096774   -0.5983068   0.6092053
0-6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.0667757   -0.0773884   0.1916493
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                -0.1428897   -0.5736608   0.1699629
6-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0278356   -0.0606328   0.1089247
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.3494810    0.0748944   0.5425657
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.1598429   -0.1372733   0.3793365
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0725345   -0.0670922   0.1938913
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.2029898    0.0418128   0.3370552
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.1742981   -0.0576777   0.3553957
6-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.2957323    0.2210309   0.3632699
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.1915546    0.0477393   0.3136501
