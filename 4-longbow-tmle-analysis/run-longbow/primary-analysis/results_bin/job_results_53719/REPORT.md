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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** vagbrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
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

agecat                        studyid                    country                        vagbrth    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  --------  ------------  -------  ------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       17     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        8     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0      185     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1      158     368
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    0       38     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    1       32     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    0      158     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    1      181     409
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    0      132     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    1       27     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    0      433     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    1       95     687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      181     496
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       21     496
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      245     496
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       49     496
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0      174    2355
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       38    2355
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0     1712    2355
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      431    2355
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    0     1812   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    1      138   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    0    13855   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    1     1072   16877
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     1042   13522
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1      100   13522
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0    11104   13522
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1     1276   13522
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     1301   26404
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      189   26404
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0    20624   26404
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     4290   26404
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      291    4499
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    1       79    4499
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3007    4499
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    1     1122    4499
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       15     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        8     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0      227     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1      100     350
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    0       42     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    1       25     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    0      215     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    1      108     390
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    0      146     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    1       12     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    0      500     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    1       25     683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      199     493
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1        3     493
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      282     493
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1        9     493
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0      198    2347
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       13    2347
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0     1947    2347
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      189    2347
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    0     1817   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    1      118   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    0    13778   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    1      944   16657
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     1107   13264
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    1       22   13264
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0    11731   13264
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      404   13264
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0     1387   26154
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    1       71   26154
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0    22889   26154
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    1     1807   26154
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0      347    4380
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    1       11    4380
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3907    4380
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    1      115    4380
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       22     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        3     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0      252     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       96     373
6-24 months                   ki1000108-IRC              INDIA                          0                    0       57     410
6-24 months                   ki1000108-IRC              INDIA                          0                    1       13     410
6-24 months                   ki1000108-IRC              INDIA                          1                    0      226     410
6-24 months                   ki1000108-IRC              INDIA                          1                    1      114     410
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    0      124     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    1       19     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    0      392     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    1       80     615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      176     472
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       18     472
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      232     472
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       46     472
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0      159    1996
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       27    1996
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0     1516    1996
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      294    1996
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    0     1898   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    1       21   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    0    14533   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    1      146   16598
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0      827   10723
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1       83   10723
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     8872   10723
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      941   10723
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0      989   17212
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      124   17212
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0    13399   17212
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     2700   17212
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      296    4510
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    1       73    4510
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3079    4510
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    1     1062    4510


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

* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/413993ef-c0cf-429c-a835-7fb08bc540e8/ba0b81e6-e0e8-466b-be1f-46fe22e0fe93/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/413993ef-c0cf-429c-a835-7fb08bc540e8/ba0b81e6-e0e8-466b-be1f-46fe22e0fe93/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/413993ef-c0cf-429c-a835-7fb08bc540e8/ba0b81e6-e0e8-466b-be1f-46fe22e0fe93/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/413993ef-c0cf-429c-a835-7fb08bc540e8/ba0b81e6-e0e8-466b-be1f-46fe22e0fe93/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3200000   0.1368958   0.5031042
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.4606414   0.4078197   0.5134631
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                0.4455965   0.3254292   0.5657637
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    NA                0.5363529   0.4831103   0.5895955
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1751961   0.1160939   0.2342984
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1782201   0.1454864   0.2109537
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1022080   0.0595667   0.1448492
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1651540   0.1223838   0.2079241
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1691345   0.1193932   0.2188759
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2009307   0.1839556   0.2179058
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                0.0724211   0.0594134   0.0854287
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    NA                0.0716456   0.0592792   0.0840119
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0859332   0.0691282   0.1027382
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1029801   0.0976254   0.1083349
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1290561   0.1080383   0.1500740
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1717203   0.1662608   0.1771799
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2160204   0.1527517   0.2792890
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2713396   0.2558058   0.2868735
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3478261   0.1529008   0.5427514
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3058104   0.2558000   0.3558208
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                0.3690569   0.2527342   0.4853795
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    NA                0.3352840   0.2837090   0.3868589
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0717023   0.0323786   0.1110260
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0480165   0.0296954   0.0663376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0593729   0.0273663   0.0913795
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0885717   0.0765191   0.1006242
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                0.0615797   0.0493672   0.0737922
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    NA                0.0640082   0.0521763   0.0758400
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0164990   0.0093141   0.0236838
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0332921   0.0300967   0.0364874
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0466830   0.0316743   0.0616917
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0731443   0.0693862   0.0769025
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0308569   0.0042330   0.0574809
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0286060   0.0232759   0.0339360
6-24 months                   ki1000108-IRC              INDIA                          0                    NA                0.1946514   0.1021495   0.2871532
6-24 months                   ki1000108-IRC              INDIA                          1                    NA                0.3326066   0.2823621   0.3828511
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1378057   0.0807092   0.1949022
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1669649   0.1333411   0.2005886
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0927850   0.0518320   0.1337380
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1662532   0.1224394   0.2100670
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1374757   0.0875873   0.1873642
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1628896   0.1458377   0.1799414
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    NA                0.0109479   0.0058879   0.0160078
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    NA                0.0099144   0.0068667   0.0129621
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0898426   0.0706171   0.1090682
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0959038   0.0900769   0.1017308
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1155445   0.0921062   0.1389829
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1671421   0.1607683   0.1735158
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1993239   0.1392710   0.2593768
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2562003   0.2410310   0.2713697


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4510870   0.4001777   0.5019962
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          NA                   NA                0.5207824   0.4723080   0.5692568
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1411290   0.1104588   0.1717993
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1991507   0.1830179   0.2152836
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0716952   0.0597165   0.0836739
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1017601   0.0966641   0.1068561
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1696334   0.1643208   0.1749460
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2669482   0.2519234   0.2819730
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3085714   0.2601110   0.3570318
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          NA                   NA                0.3410256   0.2939169   0.3881343
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0541728   0.0371844   0.0711612
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0860673   0.0747182   0.0974164
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0637570   0.0524446   0.0750694
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0321170   0.0291164   0.0351176
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0718055   0.0681632   0.0754477
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0287671   0.0234680   0.0340662
6-24 months                   ki1000108-IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1355932   0.1046749   0.1665115
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1608216   0.1447012   0.1769421
6-24 months                   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0100615   0.0072668   0.0128561
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0954957   0.0899327   0.1010586
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1640716   0.1579211   0.1702221
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2516630   0.2368610   0.2664649


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.4395044   0.8030978   2.580225
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    0                 1.2036740   0.9028085   1.604804
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.0172603   0.6928963   1.493468
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.6158616   0.9878816   2.643038
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1879934   0.8749972   1.612952
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    0                 0.9892915   0.8554848   1.144027
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1983740   0.9790274   1.466864
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.3305863   1.1285835   1.568745
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.2560837   0.9319177   1.693010
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.8792049   0.4904064   1.576246
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    0                 0.9084887   0.6401036   1.289403
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.6696649   0.3438178   1.304328
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.4917857   0.8557642   2.600511
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    0                 1.0394362   0.8711751   1.240196
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 2.0178289   1.2918810   3.151709
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.5668295   1.1343417   2.164211
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.9270515   0.3803836   2.259363
6-24 months                   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000108-IRC              INDIA                          1                    0                 1.7087299   1.0391813   2.809671
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2115962   0.7647199   1.919612
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.7918101   1.0715745   2.996136
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1848606   0.8122358   1.728432
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    0                 0.9056044   0.5311444   1.544061
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0674643   0.8546082   1.333336
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.4465598   1.1769199   1.777976
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.2853470   0.9472210   1.744173


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1310870   -0.0465745   0.3087484
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                 0.0751859   -0.0345862   0.1849580
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0023876   -0.0498150   0.0545901
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0389210    0.0028526   0.0749894
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0300162   -0.0177631   0.0777955
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0007259   -0.0100246   0.0085728
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0158269   -0.0003990   0.0320528
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0405772    0.0200323   0.0611221
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0509279   -0.0093650   0.1112207
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0392547   -0.2272721   0.1487628
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                -0.0280312   -0.1335258   0.0774634
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0175295   -0.0505030   0.0154440
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0266944   -0.0044007   0.0577895
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0021773   -0.0075825   0.0119371
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0156181    0.0084637   0.0227724
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0251225    0.0104592   0.0397857
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0020898   -0.0271695   0.0229898
6-24 months                   ki1000108-IRC              INDIA                          0                    NA                 0.1151047    0.0276509   0.2025586
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0231699   -0.0281429   0.0744827
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0428082    0.0073383   0.0782780
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0233459   -0.0245381   0.0712299
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0008864   -0.0059392   0.0041664
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0056530   -0.0128227   0.0241288
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0485271    0.0254708   0.0715833
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0523391   -0.0045161   0.1091942


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.2906024   -0.2363609   0.5929627
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                 0.1443711   -0.0952579   0.3315722
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0134447   -0.3289666   0.2676329
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2757834   -0.0243339   0.4879700
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1507210   -0.1261988   0.3595493
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0101243   -0.1490526   0.1120066
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1555312   -0.0198096   0.3007248
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2392055    0.1079922   0.3511175
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1907780   -0.0711974   0.3886839
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1272142   -0.9353750   0.3434803
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                -0.0821968   -0.4402865   0.1868632
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.3235849   -1.0852813   0.1598846
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.3101572   -0.1615955   0.5903194
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0341498   -0.1294733   0.1740693
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.4862862    0.2142988   0.6641193
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.3498683    0.1095805   0.5253122
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0726463   -1.4122592   0.5230321
6-24 months                   ki1000108-IRC              INDIA                          0                    NA                 0.3715979    0.0189831   0.5974695
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1439342   -0.2410602   0.4094980
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.3157104    0.0085060   0.5277307
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1451665   -0.2106672   0.3964152
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0880992   -0.7378143   0.3187075
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0591966   -0.1555881   0.2340601
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2957676    0.1406645   0.4228758
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2079730   -0.0553922   0.4056173
