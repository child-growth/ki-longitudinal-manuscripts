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

**Outcome Variable:** ever_stunted

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

agecat                       studyid                    country                        vagbrth    ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        3     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1       17     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       25     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1      251     296
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                     0       24     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                     1       35     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                     0      123     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                     1      178     360
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                     0       97     633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                     1       46     633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                     0      298     633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                     1      192     633
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      117     432
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       58     432
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      136     432
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      121     432
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      145    2207
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       47    2207
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1402    2207
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      613    2207
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                     0     1640   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                     1      294   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                     0    12427   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                     1     2381   16742
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                     0      707   12502
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                     1      380   12502
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     7435   12502
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1     3980   12502
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                     0      974   18291
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                     1      196   18291
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    12703   18291
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     4418   18291
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                     0      197    3208
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                     1       90    3208
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     1641    3208
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                     1     1280    3208
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                     0       12     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        8     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                     0      168     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                     1      104     292
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                     0       35     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                     1       24     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                     0      201     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                     1      100     360
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                     0      126     633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                     1       17     633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                     0      406     633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                     1       84     633
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      146     432
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       29     432
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      202     432
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       55     432
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      169    2207
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       23    2207
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1733    2207
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      282    2207
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                     0     1758   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                     1      176   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                     0    13454   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                     1     1352   16740
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                     0      903   12492
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                     1      183   12492
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     9438   12492
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                     1     1968   12492
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                     0     1091   18284
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                     1       78   18284
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                     0    14814   18284
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2301   18284
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                     0      260    3200
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                     1       26    3200
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                     0     2627    3200
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                     1      287    3200
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        3     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        9     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       25     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                     1      148     185
6-24 months                  ki1000108-IRC              INDIA                          0                     0       24     236
6-24 months                  ki1000108-IRC              INDIA                          0                     1       11     236
6-24 months                  ki1000108-IRC              INDIA                          1                     0      123     236
6-24 months                  ki1000108-IRC              INDIA                          1                     1       78     236
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                     0       81     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                     1       29     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                     0      238     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                     1      108     456
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      108     325
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       29     325
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      122     325
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       66     325
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      122    1582
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       24    1582
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1105    1582
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      331    1582
6-24 months                  ki1119695-PROBIT           BELARUS                        0                     0     1613   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        0                     1      118   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        1                     0    12189   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        1                     1     1031   14951
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                     0      542    8430
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                     1      197    8430
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     5673    8430
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                     1     2018    8430
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                     0      690   10428
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                     1      118   10428
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                     0     7489   10428
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2131   10428
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                     0      195    2893
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                     1       64    2893
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                     0     1635    2893
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                     1      999    2893


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/a2f0c906-f2e9-4691-a524-d00d8c98ad30/ba6169a2-9b55-485b-a15e-c3db530d9e99/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a2f0c906-f2e9-4691-a524-d00d8c98ad30/ba6169a2-9b55-485b-a15e-c3db530d9e99/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a2f0c906-f2e9-4691-a524-d00d8c98ad30/ba6169a2-9b55-485b-a15e-c3db530d9e99/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a2f0c906-f2e9-4691-a524-d00d8c98ad30/ba6169a2-9b55-485b-a15e-c3db530d9e99/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                0.5932203   0.4677001   0.7187406
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    NA                0.5913621   0.5357506   0.6469737
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3216783   0.2450566   0.3983001
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3918367   0.3485798   0.4350937
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3314286   0.2616051   0.4012520
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4708171   0.4097210   0.5319133
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2447917   0.1839603   0.3056230
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3042184   0.2841257   0.3243111
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    NA                0.1520165   0.1311500   0.1728831
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    NA                0.1607915   0.1412079   0.1803750
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.3495860   0.3212380   0.3779340
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3486640   0.3399216   0.3574065
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1675214   0.1443625   0.1906802
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2580457   0.2501026   0.2659887
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3135889   0.2398816   0.3872961
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4382061   0.4167703   0.4596419
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.4000000   0.1849281   0.6150719
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3823529   0.3245019   0.4402040
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                0.4067797   0.2812594   0.5322999
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    NA                0.3322259   0.2789415   0.3855104
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1188811   0.0657930   0.1719692
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1714286   0.1380321   0.2048250
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1657143   0.1105612   0.2208674
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2140078   0.1638072   0.2642084
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1197917   0.0738505   0.1657328
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1399504   0.1247988   0.1551019
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    NA                0.0910031   0.0747234   0.1072828
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    NA                0.0913143   0.0775757   0.1050530
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1685083   0.1462450   0.1907716
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1725408   0.1656062   0.1794753
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0667237   0.0510504   0.0823970
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1344435   0.1286190   0.1402679
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0909091   0.0368549   0.1449632
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0984900   0.0855410   0.1114391
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                0.3142857   0.1601618   0.4684096
6-24 months                  ki1000108-IRC              INDIA                          1                    NA                0.3880597   0.3205485   0.4555709
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2636364   0.1812079   0.3460648
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3121387   0.2632610   0.3610165
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2116788   0.1431699   0.2801878
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3510638   0.2827305   0.4193971
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1643836   0.1042466   0.2245205
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2305014   0.2087118   0.2522910
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    NA                0.0681687   0.0534748   0.0828626
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    NA                0.0779879   0.0633587   0.0926171
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2665765   0.2346949   0.2984580
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2623846   0.2525520   0.2722172
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1460396   0.1212455   0.1708337
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2215177   0.2118083   0.2312270
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2471042   0.1788429   0.3153656
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3792711   0.3572543   0.4012879


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          NA                   NA                0.5916667   0.5408218   0.6425115
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3759874   0.3382238   0.4137509
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4143519   0.3678455   0.4608582
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2990485   0.2799429   0.3181541
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1597778   0.1408215   0.1787342
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3487442   0.3403900   0.3570984
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2522552   0.2445070   0.2600034
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4270574   0.4065290   0.4475857
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3835616   0.3276935   0.4394298
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          NA                   NA                0.3444444   0.2952897   0.3935992
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1595577   0.1310079   0.1881074
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1944444   0.1570803   0.2318086
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1381966   0.1237955   0.1525978
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0912784   0.0781588   0.1043979
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1721902   0.1655693   0.1788111
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1301138   0.1245115   0.1357160
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0978125   0.0850264   0.1105986
6-24 months                  ki1000108-IRC              INDIA                          NA                   NA                0.3771186   0.3151523   0.4390850
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2923077   0.2427834   0.3418319
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2243995   0.2038353   0.2449637
6-24 months                  ki1119695-PROBIT           BELARUS                        NA                   NA                0.0768510   0.0628857   0.0908164
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2627521   0.2533561   0.2721480
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2156694   0.2063399   0.2249988
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3674386   0.3465522   0.3883251


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    0                 0.9968676   0.7908199   1.256601
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2181012   0.9368431   1.583798
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.4205689   1.1091843   1.819369
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2427644   0.9609897   1.607159
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    0                 1.0577234   0.9435224   1.185747
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9973627   0.9162013   1.085714
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.5403747   1.3397808   1.771002
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.3973905   1.0990674   1.776688
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9558824   0.5467942   1.671033
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    0                 0.8167220   0.5768229   1.156395
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.4420168   0.8858874   2.347265
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.2914263   0.8594772   1.940461
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1682814   0.7843001   1.740254
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    0                 1.0034200   0.8437632   1.193287
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0239305   0.8918572   1.175562
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 2.0149284   1.5885428   2.555762
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.0833905   0.5901128   1.989001
6-24 months                  ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1000108-IRC              INDIA                          1                    0                 1.2347354   0.7338268   2.077563
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1839745   0.8345993   1.679603
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.6584740   1.1368133   2.419514
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.4022168   0.9609864   2.046035
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    0                 1.1440428   0.9403834   1.391809
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9842752   0.8683333   1.115698
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.5168329   1.2758860   1.803282
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.5348626   1.1567638   2.036546


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                -0.0015537   -0.1163416   0.1132343
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0543090   -0.0138409   0.1224590
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0829233    0.0273513   0.1384953
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0542568   -0.0042379   0.1127515
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0077613   -0.0079630   0.0234855
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0008418   -0.0279280   0.0262444
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0847338    0.0623397   0.1071279
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1134685    0.0431933   0.1837437
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0164384   -0.2239010   0.1910243
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                -0.0623352   -0.1763846   0.0517142
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0406765   -0.0079039   0.0892570
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0287302   -0.0156936   0.0731539
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0184050   -0.0257624   0.0625724
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0002753   -0.0136898   0.0142404
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0036819   -0.0176092   0.0249730
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0633901    0.0478919   0.0788882
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0069034   -0.0436046   0.0574115
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                 0.0628329   -0.0805138   0.2061796
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0368022   -0.0359363   0.1095407
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0806289    0.0241562   0.1371016
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0600159    0.0019485   0.1180834
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    NA                 0.0086824   -0.0038715   0.0212362
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0038244   -0.0342630   0.0266143
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0696297    0.0455201   0.0937394
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1203344    0.0546099   0.1860589


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                -0.0026259   -0.2166759   0.1737662
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1444438   -0.0574654   0.3078011
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2001277    0.0538170   0.3238140
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1814315   -0.0393882   0.3553377
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0485753   -0.0534484   0.1407183
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0024138   -0.0831697   0.0723213
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.3359052    0.2410936   0.4188718
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2656985    0.0802240   0.4137717
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0428571   -0.7517776   0.3791729
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                -0.1809732   -0.5634827   0.1079545
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.2549332   -0.1174660   0.5032291
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1477551   -0.1129029   0.3473632
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1331796   -0.2529830   0.4003290
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0030158   -0.1622018   0.1447461
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0213828   -0.1104155   0.1375376
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.4871896    0.3547350   0.5924549
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0705780   -0.6226744   0.4676533
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                 0.1666132   -0.3150262   0.4718481
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1224950   -0.1561100   0.3339605
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2758356    0.0573937   0.4436552
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2674513   -0.0419608   0.4849829
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    NA                 0.1129764   -0.0581711   0.2564427
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0145551   -0.1372731   0.0949210
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.3228542    0.2022423   0.4252309
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3274952    0.1221667   0.4847966
