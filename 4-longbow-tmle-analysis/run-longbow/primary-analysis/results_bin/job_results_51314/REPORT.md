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

**Outcome Variable:** wast_rec90d

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
* W_nrooms
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        vagbrth    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  --------  ------------  -------  -----
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       11    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        9    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0      109    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1      197    326
0-24 months   ki1000108-IRC              INDIA                          0                    0       24    395
0-24 months   ki1000108-IRC              INDIA                          0                    1       39    395
0-24 months   ki1000108-IRC              INDIA                          1                    0      138    395
0-24 months   ki1000108-IRC              INDIA                          1                    1      194    395
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0       26    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1       43    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      102    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1      136    307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0       18    190
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       43    190
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       58    190
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       71    190
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0       24    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       32    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      240    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      409    705
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0       68   4431
0-24 months   ki1119695-PROBIT           BELARUS                        0                    1      391   4431
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0      547   4431
0-24 months   ki1119695-PROBIT           BELARUS                        1                    1     3425   4431
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0      119   3543
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1      182   3543
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     1494   3543
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1     1748   3543
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0      206   7551
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      241   7551
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     4153   7551
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     2951   7551
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0       84   1790
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1       47   1790
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1208   1790
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      451   1790
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        8    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        8    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       58    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1      129    203
0-6 months    ki1000108-IRC              INDIA                          0                    0       16    240
0-6 months    ki1000108-IRC              INDIA                          0                    1       31    240
0-6 months    ki1000108-IRC              INDIA                          1                    0       71    240
0-6 months    ki1000108-IRC              INDIA                          1                    1      122    240
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0        6    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    1       40    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0       33    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1      105    184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0        4    112
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       37    112
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       10    112
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       61    112
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0        8    335
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       17    335
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       91    335
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      219    335
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0       50   4263
0-6 months    ki1119695-PROBIT           BELARUS                        0                    1      388   4263
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0      438   4263
0-6 months    ki1119695-PROBIT           BELARUS                        1                    1     3387   4263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0       42   2499
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    1      177   2499
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      600   2499
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1     1680   2499
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0       82   4727
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    1      241   4727
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     1453   4727
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1     2951   4727
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0       17    510
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    1       33    510
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0      184    510
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1      276    510
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        3    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        1    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       51    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       68    123
6-24 months   ki1000108-IRC              INDIA                          0                    0        8    155
6-24 months   ki1000108-IRC              INDIA                          0                    1        8    155
6-24 months   ki1000108-IRC              INDIA                          1                    0       67    155
6-24 months   ki1000108-IRC              INDIA                          1                    1       72    155
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0       20    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1        3    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0       69    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1       31    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0       14     78
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1        6     78
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       48     78
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       10     78
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0       16    370
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       15    370
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      149    370
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      190    370
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0       18    168
6-24 months   ki1119695-PROBIT           BELARUS                        0                    1        3    168
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0      109    168
6-24 months   ki1119695-PROBIT           BELARUS                        1                    1       38    168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0       77   1044
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1        5   1044
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      894   1044
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1       68   1044
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0      124   2824
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1        0   2824
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     2700   2824
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1        0   2824
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0       67   1280
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1       14   1280
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1024   1280
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      175   1280


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

* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/81c0bf84-fb04-4366-a983-4b16c4616074/e2f570a2-a9f9-469e-bdbd-7529cad7cc6f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/81c0bf84-fb04-4366-a983-4b16c4616074/e2f570a2-a9f9-469e-bdbd-7529cad7cc6f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/81c0bf84-fb04-4366-a983-4b16c4616074/e2f570a2-a9f9-469e-bdbd-7529cad7cc6f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/81c0bf84-fb04-4366-a983-4b16c4616074/e2f570a2-a9f9-469e-bdbd-7529cad7cc6f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.4500000   0.2006580   0.6993420
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6437908   0.5870303   0.7005514
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.6177511   0.4714720   0.7640303
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5851434   0.5289389   0.6413479
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.6165583   0.4931599   0.7399567
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5696795   0.5056762   0.6336827
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.7403333   0.6108263   0.8698402
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.5638746   0.4788630   0.6488862
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5887061   0.4397440   0.7376682
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6283788   0.5891503   0.6676074
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.8532914   0.8226765   0.8839063
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.8631673   0.8525629   0.8737718
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6013471   0.5434759   0.6592182
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.5396688   0.5223972   0.5569405
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.5030962   0.4483298   0.5578627
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4160778   0.4046151   0.4275405
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3549354   0.2652280   0.4446428
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2721548   0.2501179   0.2941917
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.5000000   0.2472620   0.7527380
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6898396   0.6225361   0.7571431
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.6637017   0.5179332   0.8094701
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.6332438   0.5635472   0.7029404
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8695652   0.7703543   0.9687761
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.7608696   0.6908322   0.8309069
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6800000   0.4929570   0.8670430
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7064516   0.6550297   0.7578735
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.8882365   0.8598675   0.9166055
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.8859465   0.8757978   0.8960953
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.8174241   0.7687877   0.8660605
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7373845   0.7194398   0.7553291
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.7305175   0.6712756   0.7897594
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6704602   0.6565282   0.6843922
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.6813414   0.5472040   0.8154787
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.6001225   0.5552934   0.6449515
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.5000000   0.2294903   0.7705097
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5179856   0.4297875   0.6061838
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3000000   0.0725547   0.5274453
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1724138   0.0793318   0.2654957
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4761553   0.2835504   0.6687603
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5599766   0.5053561   0.6145971
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0609756   0.0065400   0.1154112
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0706861   0.0547411   0.0866311
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1649829   0.0870178   0.2429479
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1461003   0.1263501   0.1658504


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6319018   0.5759256   0.6878781
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6000000   0.5288495   0.6711505
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6255319   0.5876598   0.6634040
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8612051   0.8511051   0.8713052
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5447361   0.5281997   0.5612725
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4227255   0.4115874   0.4338635
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2782123   0.2567662   0.2996583
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6748768   0.6092233   0.7405304
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7044776   0.6548846   0.7540707
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.8855266   0.8758983   0.8951550
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7430972   0.7259776   0.7602169
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6752697   0.6619203   0.6886192
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.6058824   0.5634305   0.6483342
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2051282   0.1132549   0.2970015
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5540541   0.5015831   0.6065250
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0699234   0.0546210   0.0852257
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1476563   0.1284384   0.1668741


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.4306463   0.8163766   2.5071137
0-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          1                    0                 0.9472154   0.7335418   1.2231301
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9239669   0.7343168   1.1625975
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 0.7616497   0.6038213   0.9607316
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0673897   0.8227223   1.3848182
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.0115739   0.9740859   1.0505046
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.8974332   0.8111277   0.9929218
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.8270342   0.7392037   0.9253006
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.7667729   0.5879669   0.9999553
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.3796791   0.8245122   2.3086554
0-6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          1                    0                 0.9541092   0.7462563   1.2198548
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.8750000   0.7556881   1.0131495
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0388994   0.7816335   1.3808416
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 0.9974219   0.9642800   1.0317029
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9020831   0.8469143   0.9608455
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.9177880   0.8440857   0.9979257
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.8807956   0.7133918   1.0874823
6-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          1                    0                 1.0359712   0.5874383   1.8269773
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 0.5747126   0.2266054   1.4575764
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1760376   0.7760677   1.7821440
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1592516   0.4616155   2.9112199
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.8855480   0.5416690   1.4477388


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1819018   -0.0576922    0.4214959
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0278777   -0.1608261    0.1050707
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0334964   -0.1411191    0.0741262
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1403333   -0.2472147   -0.0334518
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0368258   -0.1055573    0.1792089
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0079137   -0.0210499    0.0368774
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0566110   -0.1121076   -0.0011144
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0803708   -0.1338783   -0.0268632
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0767231   -0.1624748    0.0090286
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1748768   -0.0657175    0.4154712
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0262017   -0.1571788    0.1047755
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0815217   -0.1728369    0.0097935
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0244776   -0.1550298    0.2039850
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0027098   -0.0296088    0.0241891
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0743269   -0.1210599   -0.0275940
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0552478   -0.1132898    0.0027943
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0754590   -0.2036739    0.0527559
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0161290   -0.2390237    0.2712818
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0948718   -0.2780930    0.0883494
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0778987   -0.1063839    0.2621814
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0089478   -0.0433206    0.0612162
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0173266   -0.0924039    0.0577506


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.2878641   -0.2169136    0.5832592
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0472605   -0.2984099    0.1553095
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0574492   -0.2589925    0.1118305
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.2338888   -0.4274097   -0.0666045
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0588712   -0.1988725    0.2612029
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0091891   -0.0250191    0.0422558
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1039236   -0.2107122   -0.0065542
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1901252   -0.3237321   -0.0700036
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.2757717   -0.6236274   -0.0024427
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.2591241   -0.2023404    0.5434761
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0411006   -0.2682159    0.1453423
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1034483   -0.2274251    0.0080062
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0347458   -0.2569309    0.2587375
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0030601   -0.0339018    0.0268615
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1000231   -0.1649595   -0.0387064
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0818159   -0.1713355    0.0008622
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1245440   -0.3578389    0.0686678
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0312500   -0.6139924    0.4185372
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.4625000   -1.6271554    0.1858471
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1405977   -0.2663273    0.4167603
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1279653   -1.0561158    0.6301548
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1173444   -0.7609911    0.2910478
