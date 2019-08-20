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

**Intervention Variable:** vagbrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        vagbrth    ever_co   n_cell       n
------------  -------------------------  -----------------------------  --------  --------  -------  ------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0       21     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1        4     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0      266     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1       82     373
0-24 months   ki1000108-IRC              INDIA                          0                0       60     410
0-24 months   ki1000108-IRC              INDIA                          0                1       10     410
0-24 months   ki1000108-IRC              INDIA                          1                0      274     410
0-24 months   ki1000108-IRC              INDIA                          1                1       66     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      144     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1       16     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      466     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       74     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0      189     500
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1       15     500
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      259     500
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       37     500
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0      203    2367
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        9    2367
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     2046    2367
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1      109    2367
0-24 months   ki1119695-PROBIT           BELARUS                        0                0     1948   16897
0-24 months   ki1119695-PROBIT           BELARUS                        0                1        3   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1                0    14922   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1                1       24   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0     1130   13820
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1       40   13820
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0    12115   13820
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1      535   13820
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0     1404   26801
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1      109   26801
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0    23021   26801
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     2267   26801
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0      330    4520
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1       41    4520
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     3447    4520
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      702    4520
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0       23     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1        2     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0      314     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1       29     368
0-6 months    ki1000108-IRC              INDIA                          0                0       63     409
0-6 months    ki1000108-IRC              INDIA                          0                1        7     409
0-6 months    ki1000108-IRC              INDIA                          1                0      321     409
0-6 months    ki1000108-IRC              INDIA                          1                1       18     409
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      155     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1        5     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      515     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1       25     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      198     500
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1        6     500
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      292     500
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1        4     500
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0      208    2367
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        4    2367
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     2140    2367
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       15    2367
0-6 months    ki1119695-PROBIT           BELARUS                        0                0     1948   16893
0-6 months    ki1119695-PROBIT           BELARUS                        0                1        3   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1                0    14926   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1                1       16   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                0     1155   13726
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                1       10   13726
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0    12405   13726
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1      156   13726
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0     1441   26739
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1       69   26739
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0    24245   26739
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      984   26739
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0      351    4474
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1       16    4474
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     3999    4474
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1      108    4474
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0       23     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1        2     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0      280     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1       68     373
6-24 months   ki1000108-IRC              INDIA                          0                0       64     410
6-24 months   ki1000108-IRC              INDIA                          0                1        6     410
6-24 months   ki1000108-IRC              INDIA                          1                0      282     410
6-24 months   ki1000108-IRC              INDIA                          1                1       58     410
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      130     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1       13     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      409     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       62     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0      183     472
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1       11     472
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      244     472
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       34     472
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0      178    1995
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        8    1995
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     1705    1995
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1      104    1995
6-24 months   ki1119695-PROBIT           BELARUS                        0                0     1919   16598
6-24 months   ki1119695-PROBIT           BELARUS                        0                1        0   16598
6-24 months   ki1119695-PROBIT           BELARUS                        1                0    14670   16598
6-24 months   ki1119695-PROBIT           BELARUS                        1                1        9   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0      874   10604
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1       30   10604
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0     9301   10604
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1      399   10604
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0     1064   17194
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1       49   17194
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0    14634   17194
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     1447   17194
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0      339    4510
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1       30    4510
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     3501    4510
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      640    4510


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
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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




# Results Detail

## Results Plots
![](/tmp/4c90e54e-f9e5-40ef-ac04-8d95c7438325/76c3ae8f-fbba-4a3d-96e7-65990633e7ef/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4c90e54e-f9e5-40ef-ac04-8d95c7438325/76c3ae8f-fbba-4a3d-96e7-65990633e7ef/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4c90e54e-f9e5-40ef-ac04-8d95c7438325/76c3ae8f-fbba-4a3d-96e7-65990633e7ef/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4c90e54e-f9e5-40ef-ac04-8d95c7438325/76c3ae8f-fbba-4a3d-96e7-65990633e7ef/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1497995   0.0648337   0.2347652
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1925349   0.1505440   0.2345258
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1047466   0.0570714   0.1524217
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1346825   0.1058157   0.1635493
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0703311   0.0343616   0.1063006
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1247477   0.0868258   0.1626696
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0424528   0.0153069   0.0695988
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0505800   0.0413259   0.0598342
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0332207   0.0227353   0.0437062
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0424463   0.0389297   0.0459629
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0820225   0.0639554   0.1000895
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0895210   0.0854936   0.0935483
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1051903   0.0679840   0.1423967
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1690865   0.1559688   0.1822042
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.1000000   0.0296358   0.1703642
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.0530973   0.0291989   0.0769957
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0312500   0.0042708   0.0582292
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0462963   0.0285609   0.0640317
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0077226   0.0028043   0.0126410
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0124613   0.0105191   0.0144035
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0506967   0.0354214   0.0659720
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0391647   0.0366221   0.0417072
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0440970   0.0198454   0.0683486
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0262906   0.0203487   0.0322326
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.0857143   0.0200549   0.1513737
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1705882   0.1305570   0.2106194
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0927460   0.0446697   0.1408223
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1304345   0.0998923   0.1609768
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0551029   0.0222970   0.0879089
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1218631   0.0831926   0.1605336
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0430108   0.0138471   0.0721744
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0574903   0.0467609   0.0682198
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0325937   0.0206567   0.0445306
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0412971   0.0373323   0.0452618
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0516839   0.0351500   0.0682179
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0896359   0.0846908   0.0945810
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0826638   0.0513338   0.1139938
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1543695   0.1419096   0.1668294


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1853659   0.1477057   0.2230261
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1040000   0.0772164   0.1307836
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0498521   0.0410826   0.0586217
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0416064   0.0382770   0.0449357
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0886534   0.0847769   0.0925300
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1643805   0.1517702   0.1769909
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0611247   0.0378797   0.0843697
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0120938   0.0102652   0.0139225
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0393807   0.0369019   0.0418595
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0277157   0.0217808   0.0336506
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1560976   0.1209228   0.1912723
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0953390   0.0688164   0.1218616
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0561404   0.0460367   0.0662440
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0404564   0.0367062   0.0442067
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0870071   0.0823429   0.0916713
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1485588   0.1367632   0.1603543


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          1                    0                 1.2852840   0.7005824   2.357974
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2857934   0.7777987   2.125569
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.7737194   0.9784390   3.215408
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1914410   0.6126664   2.316973
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2777040   0.9219861   1.770664
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.0914203   0.8718958   1.366216
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.6074343   1.1238467   2.299108
0-6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          1                    0                 0.5309735   0.2303117   1.224136
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.4814815   0.5761031   3.809713
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.6136102   0.8376155   3.108512
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.7725286   0.5682652   1.050215
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.5961999   0.3339695   1.064331
6-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          1                    0                 1.9901961   0.8932121   4.434423
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.4063626   0.7969338   2.481832
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 2.2115540   1.1264998   4.341742
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.3366500   0.6615928   2.700503
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2670266   0.8676832   1.850164
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.7343086   1.2507620   2.404795
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.8674374   1.2685688   2.749021


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0355664   -0.0436365   0.1147693
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0238248   -0.0195208   0.0671705
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0336689    0.0025995   0.0647382
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0073993   -0.0187121   0.0335107
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0083856   -0.0017614   0.0185327
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0066310   -0.0110851   0.0243470
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0591902    0.0235303   0.0948501
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0388753   -0.1004926   0.0227420
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0116071   -0.0133041   0.0365183
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0043712   -0.0004429   0.0091853
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0113160   -0.0261457   0.0035136
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0163813   -0.0389267   0.0061640
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0703833    0.0065372   0.1342293
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0294038   -0.0144561   0.0732638
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0402361    0.0101802   0.0702919
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0131296   -0.0150486   0.0413078
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0078628   -0.0036928   0.0194183
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0353232    0.0186803   0.0519661
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0658949    0.0350134   0.0967765


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.1918713   -0.3689884   0.5229529
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1853043   -0.2295806   0.4601988
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.3237391   -0.0395868   0.5600860
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1484250   -0.5741345   0.5393151
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.2015467   -0.0830766   0.4113734
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0747963   -0.1482216   0.2544977
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3600804    0.1013712   0.5443089
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.6360000   -1.9871157   0.1039865
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.2708333   -0.6021007   0.6681332
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.3614406   -0.1845486   0.6557692
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.2873501   -0.7229689   0.0381311
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.5910493   -1.6340785   0.0389664
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.4508929   -0.1352628   0.7344063
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.2407193   -0.2139499   0.5250980
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.4220315    0.0328704   0.6545990
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2338709   -0.4720286   0.6012620
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1943512   -0.1477622   0.4344910
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.4059802    0.1835226   0.5678270
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.4435615    0.1950266   0.6153614
