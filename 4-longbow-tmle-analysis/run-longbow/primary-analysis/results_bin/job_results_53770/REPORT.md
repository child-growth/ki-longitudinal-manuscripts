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
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_brthmon
* delta_W_parity

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
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      146     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1        2     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      480     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       13     641
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
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                  0      813    9449
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                  1        9    9449
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  0     8472    9449
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  1      155    9449
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0      939   15765
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1       57   15765
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    13931   15765
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      838   15765
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
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      144     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1        4     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      480     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1       10     638
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                  0       49     629
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                  1        0     629
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                  0      566     629
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                  1       14     629
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0        0      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1        0      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0       48      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1        2      50
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       24     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        1     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0      326     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       22     373
6-24 months   ki1000108-IRC              INDIA                          0                  0       62     410
6-24 months   ki1000108-IRC              INDIA                          0                  1        8     410
6-24 months   ki1000108-IRC              INDIA                          1                  0      300     410
6-24 months   ki1000108-IRC              INDIA                          1                  1       40     410
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      146     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1        2     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      480     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       13     641
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
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                  0      813    9449
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                  1        9    9449
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  0     8472    9449
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  1      155    9449
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0      939   15765
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1       57   15765
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    13931   15765
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      838   15765
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
![](/tmp/68a23d82-490e-4f6e-94e4-6c4ff5137d77/44d6e81b-498b-4c92-94cb-5e3ccfc650b0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/68a23d82-490e-4f6e-94e4-6c4ff5137d77/44d6e81b-498b-4c92-94cb-5e3ccfc650b0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/68a23d82-490e-4f6e-94e4-6c4ff5137d77/44d6e81b-498b-4c92-94cb-5e3ccfc650b0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/68a23d82-490e-4f6e-94e4-6c4ff5137d77/44d6e81b-498b-4c92-94cb-5e3ccfc650b0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1142857   0.0396628   0.1889086
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1176471   0.0833584   0.1519357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0303030   0.0064206   0.0541854
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0267765   0.0195951   0.0339579
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0061727   0.0029916   0.0093539
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0099910   0.0052450   0.0147369
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0109489   0.0038346   0.0180632
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0179668   0.0151637   0.0207700
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0595135   0.0413129   0.0777140
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0571226   0.0528654   0.0613798
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0529920   0.0256873   0.0802967
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0810290   0.0714428   0.0906152
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2800000   0.1037493   0.4562507
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1291291   0.0930611   0.1651972
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.1704807   0.0817581   0.2592034
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.1591894   0.1199109   0.1984680
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0267380   0.0036113   0.0498646
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0254329   0.0182532   0.0326126
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0784012   0.0527040   0.1040984
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0852784   0.0568741   0.1136826
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1142857   0.0396628   0.1889086
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1176471   0.0833584   0.1519357
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0303030   0.0064206   0.0541854
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0267765   0.0195951   0.0339579
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0062243   0.0030536   0.0093951
6-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0099943   0.0052553   0.0147334
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0109489   0.0038346   0.0180632
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0179668   0.0151637   0.0207700
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0621281   0.0424398   0.0818164
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0572572   0.0529946   0.0615198
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0526384   0.0254760   0.0798008
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0810898   0.0715050   0.0906746


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0271028   0.0202213   0.0339843
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0095893   0.0052864   0.0138922
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0173563   0.0147230   0.0199897
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0567713   0.0526559   0.0608868
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0787756   0.0696990   0.0878522
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0255528   0.0186952   0.0324104
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0846069   0.0570929   0.1121208
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0271028   0.0202213   0.0339843
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0095893   0.0052864   0.0138922
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0173563   0.0147230   0.0199897
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0567713   0.0526559   0.0608868
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0787756   0.0696990   0.0878522


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          1                    0                 1.0294118   0.5035574   2.1044047
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8836251   0.3843408   2.0315133
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.6185645   0.8514921   3.0766591
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.6409721   0.8411810   3.2012011
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.9598264   0.7040680   1.3084912
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.5290804   0.9005687   2.5962340
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.4611755   0.2316258   0.9182174
0-6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          1                    0                 0.9337678   0.5244745   1.6624682
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9511905   0.3829381   2.3626880
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.0877183   0.8680940   1.3629068
6-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          1                    0                 1.0294118   0.5035574   2.1044047
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8836251   0.3843408   2.0315133
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.6056878   0.8468952   3.0443361
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.6409721   0.8411810   3.2012011
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.9215993   0.6684725   1.2705762
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.5405064   0.9063968   2.6182353


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0027875   -0.0653152   0.0708901
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0032002   -0.0258316   0.0194312
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0034166   -0.0012780   0.0081111
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0064074   -0.0005741   0.0133889
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0027421   -0.0202902   0.0148060
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0257836   -0.0009034   0.0524707
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1403352   -0.3077229   0.0270526
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0112768   -0.0922192   0.0696657
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0011851   -0.0231755   0.0208052
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0062057   -0.0103016   0.0227130
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0027875   -0.0653152   0.0708901
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0032002   -0.0258316   0.0194312
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0033650   -0.0013381   0.0080680
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0064074   -0.0005741   0.0133889
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0053568   -0.0244084   0.0136949
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0261372   -0.0004413   0.0527157


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0238095   -0.7714072    0.4620391
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1180773   -1.3584262    0.4699445
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.3562892   -0.1685207    0.6453948
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.3691695   -0.1863150    0.6645519
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0483012   -0.4076216    0.2192962
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3273048   -0.1102459    0.5924157
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.0048000   -2.6272555   -0.1080617
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0708321   -0.7217852    0.3340160
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0463801   -1.3814109    0.5402258
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0733476   -0.1334764    0.2424327
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0238095   -0.7714072    0.4620391
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1180773   -1.3584262    0.4699445
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.3509074   -0.1755985    0.6416113
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.3691695   -0.1863150    0.6645519
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0943566   -0.4867215    0.1944581
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3317932   -0.1040160    0.5955672
