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

**Intervention Variable:** vagbrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        vagbrth    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  --------  ----------  -------  ------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       24     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        1     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0      326     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       22     373
0-24 months   ki1000108-IRC              INDIA                          0                  0       62     410
0-24 months   ki1000108-IRC              INDIA                          0                  1        8     410
0-24 months   ki1000108-IRC              INDIA                          1                  0      300     410
0-24 months   ki1000108-IRC              INDIA                          1                  1       40     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      146     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1        2     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      479     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       13     640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  0      191     472
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  1        3     472
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  0      261     472
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  1       17     472
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0      192    2140
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        6    2140
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0     1890    2140
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       52    2140
0-24 months   ki1119695-PROBIT           BELARUS                        0                  0     1906   16581
0-24 months   ki1119695-PROBIT           BELARUS                        0                  1       12   16581
0-24 months   ki1119695-PROBIT           BELARUS                        1                  0    14516   16581
0-24 months   ki1119695-PROBIT           BELARUS                        1                  1      147   16581
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                  0      797    9256
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                  1        8    9256
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  0     8296    9256
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  1      155    9256
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0      924   15644
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1       59   15644
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    13825   15644
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      836   15644
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      341    4443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1       19    4443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3752    4443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      331    4443
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       18     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        7     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0      290     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       43     358
0-6 months    ki1000108-IRC              INDIA                          0                  0       57     402
0-6 months    ki1000108-IRC              INDIA                          0                  1       11     402
0-6 months    ki1000108-IRC              INDIA                          1                  0      281     402
0-6 months    ki1000108-IRC              INDIA                          1                  1       53     402
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      144     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1        4     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      479     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1       10     637
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                  0       96     249
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                  1        0     249
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                  0      148     249
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                  1        5     249
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0      182    2035
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        5    2035
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0     1801    2035
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       47    2035
0-6 months    ki1119695-PROBIT           BELARUS                        0                  0     1415   13545
0-6 months    ki1119695-PROBIT           BELARUS                        0                  1      120   13545
0-6 months    ki1119695-PROBIT           BELARUS                        1                  0    10984   13545
0-6 months    ki1119695-PROBIT           BELARUS                        1                  1     1026   13545
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                  0       49     607
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                  1        0     607
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                  0      544     607
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                  1       14     607
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0       44      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1        2      46
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       24     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        1     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0      326     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       22     373
6-24 months   ki1000108-IRC              INDIA                          0                  0       62     410
6-24 months   ki1000108-IRC              INDIA                          0                  1        8     410
6-24 months   ki1000108-IRC              INDIA                          1                  0      300     410
6-24 months   ki1000108-IRC              INDIA                          1                  1       40     410
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      146     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1        2     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      479     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       13     640
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  0      191     472
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  1        3     472
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  0      261     472
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  1       17     472
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0      192    2140
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        6    2140
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0     1890    2140
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       52    2140
6-24 months   ki1119695-PROBIT           BELARUS                        0                  0     1906   16581
6-24 months   ki1119695-PROBIT           BELARUS                        0                  1       12   16581
6-24 months   ki1119695-PROBIT           BELARUS                        1                  0    14516   16581
6-24 months   ki1119695-PROBIT           BELARUS                        1                  1      147   16581
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                  0      797    9256
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                  1        8    9256
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  0     8296    9256
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  1      155    9256
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0      924   15644
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1       59   15644
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    13825   15644
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      836   15644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      341    4443
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1       19    4443
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3752    4443
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      331    4443


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/2c2ccb99-f0f8-4918-80f5-80ba8387e882/031d5457-a694-4638-8950-0ab1e80541ee/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2c2ccb99-f0f8-4918-80f5-80ba8387e882/031d5457-a694-4638-8950-0ab1e80541ee/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2c2ccb99-f0f8-4918-80f5-80ba8387e882/031d5457-a694-4638-8950-0ab1e80541ee/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2c2ccb99-f0f8-4918-80f5-80ba8387e882/031d5457-a694-4638-8950-0ab1e80541ee/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1142857   0.0396628   0.1889086
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1176471   0.0833584   0.1519357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0303030   0.0064206   0.0541854
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0267765   0.0195951   0.0339579
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0062459   0.0030406   0.0094513
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0099124   0.0051939   0.0146310
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0099379   0.0030853   0.0167904
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0183410   0.0154801   0.0212020
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0590461   0.0439812   0.0741110
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0570283   0.0528591   0.0611975
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0526594   0.0253502   0.0799685
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0810795   0.0714930   0.0906660
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2800000   0.1037493   0.4562507
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1291291   0.0930611   0.1651972
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.1610014   0.0724243   0.2495785
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.1585272   0.1192841   0.1977703
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0267380   0.0036113   0.0498646
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0254329   0.0182532   0.0326126
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0809767   0.0546497   0.1073038
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0851432   0.0567046   0.1135817
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1142857   0.0396628   0.1889086
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1176471   0.0833584   0.1519357
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0303030   0.0064206   0.0541854
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0267765   0.0195951   0.0339579
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0060647   0.0028995   0.0092300
6-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0099713   0.0052350   0.0147076
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0099379   0.0030853   0.0167904
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0183410   0.0154801   0.0212020
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0580321   0.0431399   0.0729244
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0570427   0.0528751   0.0612103
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0526684   0.0260013   0.0793355
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0810777   0.0714950   0.0906603


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0271028   0.0202213   0.0339843
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0095893   0.0052864   0.0138922
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176102   0.0149305   0.0202899
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0572104   0.0531179   0.0613029
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0787756   0.0696990   0.0878522
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0255528   0.0186952   0.0324104
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0846069   0.0570929   0.1121208
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0271028   0.0202213   0.0339843
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0095893   0.0052864   0.0138922
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176102   0.0149305   0.0202899
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0572104   0.0531179   0.0613029
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0787756   0.0696990   0.0878522


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          1                    0                 1.0294118   0.5035574   2.1044047
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8836251   0.3843408   2.0315133
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.5870181   0.8297329   3.0354662
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.8455656   0.9101236   3.7424724
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.9658260   0.7453648   1.2514943
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.5396973   0.9038131   2.6229623
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.4611755   0.2316258   0.9182174
0-6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          1                    0                 0.9846324   0.5384826   1.8004311
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9511905   0.3829381   2.3626880
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.0514522   0.8363190   1.3219258
6-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          1                    0                 1.0294118   0.5035574   2.1044047
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8836251   0.3843408   2.0315133
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.6441473   0.8622652   3.1350221
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.8455656   0.9101236   3.7424724
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.9829500   0.7576384   1.2752662
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.5393991   0.9145111   2.5912746


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0027875   -0.0653152   0.0708901
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0032002   -0.0258316   0.0194312
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0033433   -0.0014146   0.0081013
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0076723    0.0008922   0.0144524
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0018357   -0.0161703   0.0124989
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0261162   -0.0005816   0.0528141
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1403352   -0.3077229   0.0270526
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0017974   -0.0824614   0.0788665
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0011851   -0.0231755   0.0208052
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0036301   -0.0133045   0.0205648
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0027875   -0.0653152   0.0708901
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0032002   -0.0258316   0.0194312
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0035246   -0.0011521   0.0082012
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0076723    0.0008922   0.0144524
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0008217   -0.0149738   0.0133303
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0261072    0.0000138   0.0522006


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0238095   -0.7714072    0.4620391
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1180773   -1.3584262    0.4699445
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.3486540   -0.1888130    0.6431301
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.4356743   -0.1053313    0.7118841
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0320867   -0.3155741    0.1903133
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3315271   -0.1069678    0.5963242
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.0048000   -2.6272555   -0.1080617
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0112901   -0.6689964    0.3872320
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0463801   -1.3814109    0.5402258
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0429057   -0.1737898    0.2195967
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0238095   -0.7714072    0.4620391
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1180773   -1.3584262    0.4699445
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.3675517   -0.1516075    0.6526673
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.4356743   -0.1053313    0.7118841
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0143628   -0.2944514    0.2051212
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3314123   -0.0939981    0.5913983
