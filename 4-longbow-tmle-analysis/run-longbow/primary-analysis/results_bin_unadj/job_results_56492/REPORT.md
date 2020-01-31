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

**Outcome Variable:** ever_swasted

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

agecat                        studyid                    country                        vagbrth    ever_swasted   n_cell       n  outcome_variable 
----------------------------  -------------------------  -----------------------------  --------  -------------  -------  ------  -----------------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0       20     368  ever_swasted     
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        5     368  ever_swasted     
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0      293     368  ever_swasted     
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       50     368  ever_swasted     
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                     0       55     409  ever_swasted     
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                     1       15     409  ever_swasted     
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                     0      277     409  ever_swasted     
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                     1       62     409  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                     0      158     687  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                     1        1     687  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                     0      510     687  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                     1       18     687  ever_swasted     
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      198     496  ever_swasted     
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        4     496  ever_swasted     
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      284     496  ever_swasted     
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       10     496  ever_swasted     
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      195    2355  ever_swasted     
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       17    2355  ever_swasted     
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     2039    2355  ever_swasted     
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      104    2355  ever_swasted     
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                     0     1922   16877  ever_swasted     
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                     1       28   16877  ever_swasted     
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                     0    14751   16877  ever_swasted     
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                     1      176   16877  ever_swasted     
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                     0     1110   13522  ever_swasted     
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                     1       32   13522  ever_swasted     
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0    11940   13522  ever_swasted     
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      440   13522  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     1454   26404  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                     1       36   26404  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    24005   26404  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      909   26404  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                     0      358    4499  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                     1       12    4499  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     3933    4499  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      196    4499  ever_swasted     
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                     0       20     350  ever_swasted     
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        3     350  ever_swasted     
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                     0      300     350  ever_swasted     
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       27     350  ever_swasted     
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                     0       55     390  ever_swasted     
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                     1       12     390  ever_swasted     
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                     0      278     390  ever_swasted     
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                     1       45     390  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                     0      157     683  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                     1        1     683  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                     0      520     683  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                     1        5     683  ever_swasted     
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      202     493  ever_swasted     
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        0     493  ever_swasted     
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      291     493  ever_swasted     
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1        0     493  ever_swasted     
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      205    2347  ever_swasted     
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1        6    2347  ever_swasted     
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     2100    2347  ever_swasted     
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       36    2347  ever_swasted     
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                     0     1913   16657  ever_swasted     
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                     1       22   16657  ever_swasted     
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                     0    14565   16657  ever_swasted     
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                     1      157   16657  ever_swasted     
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                     0     1125   13264  ever_swasted     
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                     1        4   13264  ever_swasted     
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                     0    12008   13264  ever_swasted     
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      127   13264  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                     0     1445   26154  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                     1       13   26154  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                     0    24274   26154  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                     1      422   26154  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                     0      356    4380  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                     1        2    4380  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                     0     4003    4380  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                     1       19    4380  ever_swasted     
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0       23     373  ever_swasted     
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        2     373  ever_swasted     
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0      320     373  ever_swasted     
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       28     373  ever_swasted     
6-24 months                   ki1000108-IRC              INDIA                          0                     0       66     410  ever_swasted     
6-24 months                   ki1000108-IRC              INDIA                          0                     1        4     410  ever_swasted     
6-24 months                   ki1000108-IRC              INDIA                          1                     0      318     410  ever_swasted     
6-24 months                   ki1000108-IRC              INDIA                          1                     1       22     410  ever_swasted     
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                     0      143     615  ever_swasted     
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                     1        0     615  ever_swasted     
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                     0      459     615  ever_swasted     
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                     1       13     615  ever_swasted     
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      190     472  ever_swasted     
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        4     472  ever_swasted     
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      267     472  ever_swasted     
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       11     472  ever_swasted     
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      175    1996  ever_swasted     
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       11    1996  ever_swasted     
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1738    1996  ever_swasted     
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       72    1996  ever_swasted     
6-24 months                   ki1119695-PROBIT           BELARUS                        0                     0     1913   16598  ever_swasted     
6-24 months                   ki1119695-PROBIT           BELARUS                        0                     1        6   16598  ever_swasted     
6-24 months                   ki1119695-PROBIT           BELARUS                        1                     0    14659   16598  ever_swasted     
6-24 months                   ki1119695-PROBIT           BELARUS                        1                     1       20   16598  ever_swasted     
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                     0      882   10723  ever_swasted     
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                     1       28   10723  ever_swasted     
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     9490   10723  ever_swasted     
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      323   10723  ever_swasted     
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     1090   17212  ever_swasted     
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                     1       23   17212  ever_swasted     
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    15572   17212  ever_swasted     
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      527   17212  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                     0      359    4510  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                     1       10    4510  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     3952    4510  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      189    4510  ever_swasted     


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/4efaff36-4aa5-4287-af5b-78acfc9e7583/8c7ea617-1ceb-4d64-9734-79a995a469f3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4efaff36-4aa5-4287-af5b-78acfc9e7583/8c7ea617-1ceb-4d64-9734-79a995a469f3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4efaff36-4aa5-4287-af5b-78acfc9e7583/8c7ea617-1ceb-4d64-9734-79a995a469f3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4efaff36-4aa5-4287-af5b-78acfc9e7583/8c7ea617-1ceb-4d64-9734-79a995a469f3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2000000    0.0429894   0.3570106
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1457726    0.1083773   0.1831679
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                0.2142857    0.1180448   0.3105266
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    NA                0.1828909    0.1416891   0.2240926
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0801887    0.0436226   0.1167547
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0485301    0.0394303   0.0576299
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                0.0143590    0.0078966   0.0208214
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    NA                0.0117907    0.0077173   0.0158642
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0280210    0.0184490   0.0375930
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0355412    0.0322797   0.0388027
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0241611    0.0152709   0.0330513
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0364855    0.0338023   0.0391687
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0324324    0.0108329   0.0540320
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0474691    0.0404929   0.0544453
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                0.1791045    0.0871728   0.2710362
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    NA                0.1393189    0.1015068   0.1771310
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0284360    0.0060039   0.0508681
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0168539    0.0113938   0.0223140
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                0.0113695    0.0056833   0.0170557
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    NA                0.0106643    0.0066180   0.0147106
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0089163    0.0037799   0.0140527
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0170878    0.0151732   0.0190024
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0591398    0.0252317   0.0930478
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0397790    0.0307730   0.0487850
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    NA                0.0031266   -0.0009905   0.0072437
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    NA                0.0013625    0.0007667   0.0019583
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0307692    0.0195485   0.0419899
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0329155    0.0293853   0.0364457
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0206649    0.0108605   0.0304692
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0327350    0.0297181   0.0357518
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0271003    0.0071919   0.0470087
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0456411    0.0386242   0.0526581


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1494565   0.1129794   0.1859337
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          NA                   NA                0.1882641   0.1503318   0.2261964
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0513800   0.0424616   0.0602985
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0120875   0.0084025   0.0157724
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0349061   0.0318124   0.0379998
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0357900   0.0332085   0.0383715
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0462325   0.0396215   0.0528435
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          NA                   NA                0.1461538   0.1110489   0.1812588
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0178952   0.0125307   0.0232597
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0107462   0.0070475   0.0144449
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0166323   0.0148114   0.0184531
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0415832   0.0328230   0.0503433
6-24 months                   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0015665   0.0007872   0.0023457
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0327334   0.0293653   0.0361014
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0319545   0.0290590   0.0348499
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0441242   0.0374527   0.0507956


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.7288630   0.3191248   1.6646817
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    0                 0.8534907   0.5163975   1.4106310
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6051989   0.3696326   0.9908911
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    0                 0.8211391   0.4683815   1.4395729
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2683764   0.8904991   1.8066033
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.5100947   1.0380777   2.1967392
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.4636312   0.7370624   2.9064248
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    0                 0.7778638   0.4352533   1.3901609
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.5926966   0.2526208   1.3905792
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    0                 0.9379747   0.5164289   1.7036159
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.9164611   1.0621876   3.4577915
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6726268   0.3631281   1.2459153
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    0                 0.4357699   0.1200864   1.5813229
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0697544   0.7314784   1.5644678
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.5840870   0.9773904   2.5673792
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.6841584   0.7960137   3.5632421


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0505435   -0.2009875   0.0999006
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                -0.0260217   -0.1128012   0.0607579
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0288086   -0.0630998   0.0054825
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0022715   -0.0089609   0.0044179
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0068851   -0.0023733   0.0161434
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0116290    0.0028838   0.0203741
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0138001   -0.0071920   0.0347921
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                -0.0329506   -0.1152912   0.0493899
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0105408   -0.0315527   0.0104710
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0006233   -0.0064921   0.0052456
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0077159    0.0024894   0.0129425
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0175566   -0.0493719   0.0142587
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0015602   -0.0051189   0.0019985
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0019641   -0.0088005   0.0127288
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0112896    0.0017125   0.0208667
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0170239   -0.0023014   0.0363492


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.3381818   -1.8354235    0.3684433
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                -0.1382189   -0.7058900    0.2405476
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5606970   -1.3844507   -0.0215247
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                -0.1879236   -0.9278670    0.2680188
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1972454   -0.1163068    0.4227259
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.3249217    0.0319492    0.5292285
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2984927   -0.3386756    0.6323886
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                -0.2254517   -0.9382973    0.2252314
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5890318   -2.3006805    0.2349995
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0579995   -0.7855550    0.3731008
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.4639137    0.0496626    0.6975932
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4222049   -1.4277873    0.1668681
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    NA                -0.9959915   -4.3775882    0.2591508
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0600044   -0.3336426    0.3374599
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.3533023   -0.0270229    0.5927862
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3858180   -0.2510649    0.6984812
