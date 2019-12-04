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
* W_mwtkg
* W_mbmi
* single
* W_nrooms
* brthmon
* W_parity
* impfloor
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        vagbrth    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  --------  ------------  -------  -----
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       11    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        9    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0      109    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1      195    324
0-24 months   ki1000108-IRC              INDIA                          0                    0       24    395
0-24 months   ki1000108-IRC              INDIA                          0                    1       39    395
0-24 months   ki1000108-IRC              INDIA                          1                    0      138    395
0-24 months   ki1000108-IRC              INDIA                          1                    1      194    395
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0       25    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1       44    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      104    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1      135    308
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0       18    189
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       42    189
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       58    189
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       71    189
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0       24    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       32    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      240    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      409    705
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0       68   4431
0-24 months   ki1119695-PROBIT           BELARUS                        0                    1      391   4431
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0      547   4431
0-24 months   ki1119695-PROBIT           BELARUS                        1                    1     3425   4431
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0      121   3582
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1      184   3582
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     1512   3582
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1     1765   3582
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0      206   7547
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      241   7547
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     4152   7547
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     2948   7547
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0       84   1790
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1       47   1790
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1208   1790
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      451   1790
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        8    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        8    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       58    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1      127    201
0-6 months    ki1000108-IRC              INDIA                          0                    0       16    240
0-6 months    ki1000108-IRC              INDIA                          0                    1       31    240
0-6 months    ki1000108-IRC              INDIA                          1                    0       71    240
0-6 months    ki1000108-IRC              INDIA                          1                    1      122    240
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0        6    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    1       40    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0       34    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1      105    185
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0        4    111
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       36    111
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       10    111
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       61    111
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0        8    335
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       17    335
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       91    335
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      219    335
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0       50   4263
0-6 months    ki1119695-PROBIT           BELARUS                        0                    1      388   4263
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0      438   4263
0-6 months    ki1119695-PROBIT           BELARUS                        1                    1     3387   4263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0       41   2501
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    1      179   2501
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      591   2501
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1     1690   2501
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0       82   4723
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    1      241   4723
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     1452   4723
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1     2948   4723
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
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0       19    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1        4    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0       70    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1       30    123
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
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0       80   1081
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1        5   1081
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      921   1081
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1       75   1081
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
![](/tmp/a76c533c-801f-4fb5-affb-0e4455f18d86/3e11a646-af7d-486a-ae8c-20a2f88b7e70/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a76c533c-801f-4fb5-affb-0e4455f18d86/3e11a646-af7d-486a-ae8c-20a2f88b7e70/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a76c533c-801f-4fb5-affb-0e4455f18d86/3e11a646-af7d-486a-ae8c-20a2f88b7e70/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a76c533c-801f-4fb5-affb-0e4455f18d86/3e11a646-af7d-486a-ae8c-20a2f88b7e70/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.4500000   0.2010987   0.6989013
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6414474   0.5845014   0.6983933
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.6154800   0.4722822   0.7586777
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5848319   0.5286863   0.6409774
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.6291411   0.5025057   0.7557765
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5714280   0.5073176   0.6355383
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.6977301   0.5683854   0.8270748
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.5746122   0.4897584   0.6594661
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5768609   0.4162475   0.7374743
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6295366   0.5902846   0.6687886
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.8472206   0.8152691   0.8791720
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.8628285   0.8521970   0.8734600
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.5933182   0.5377660   0.6488705
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.5389055   0.5217282   0.5560827
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.5123850   0.4580829   0.5666872
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4155228   0.4040786   0.4269669
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3618524   0.2754913   0.4482135
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2715130   0.2494652   0.2935607
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.5000000   0.2484317   0.7515683
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6864865   0.6188619   0.7541111
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.6623040   0.5186984   0.8059096
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.6316256   0.5619258   0.7013253
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8695652   0.7698152   0.9693153
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.7553957   0.6854609   0.8253304
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6800000   0.4929570   0.8670430
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7064516   0.6550297   0.7578735
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.8905665   0.8607323   0.9204007
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.8851885   0.8750109   0.8953661
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.8113940   0.7652412   0.8575469
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7408035   0.7229785   0.7586286
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.7298904   0.6716659   0.7881149
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6701976   0.6562803   0.6841150
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.6613797   0.5198601   0.8028992
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.6002971   0.5554152   0.6451790
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.5000000   0.2294903   0.7705097
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5179856   0.4297875   0.6061838
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3000000   0.0725547   0.5274453
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1724138   0.0793318   0.2654957
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4916371   0.2874584   0.6958159
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5607794   0.5061513   0.6154075
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0588235   0.0060316   0.1116154
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0753012   0.0590916   0.0915108
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1670843   0.0870016   0.2471669
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1462374   0.1263973   0.1660774


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6296296   0.5734927   0.6857666
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.5978836   0.5264156   0.6693516
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6255319   0.5876598   0.6634040
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8612051   0.8511051   0.8713052
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5441094   0.5276459   0.5605730
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4225520   0.4114127   0.4336913
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2782123   0.2567662   0.2996583
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6716418   0.6057305   0.7375531
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7044776   0.6548846   0.7540707
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.8855266   0.8758983   0.8951550
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7473011   0.7302821   0.7643201
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6752064   0.6618507   0.6885622
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.6058824   0.5634305   0.6483342
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2051282   0.1132549   0.2970015
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5540541   0.5015831   0.6065250
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0740056   0.0585029   0.0895082
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1476563   0.1284384   0.1668741


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.4254386   0.8141162   2.4958048
0-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          1                    0                 0.9502045   0.7386863   1.2222898
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9082668   0.7209619   1.1442334
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 0.8235451   0.6497411   1.0438413
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0913143   0.8204041   1.4516833
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.0184225   0.9789590   1.0594769
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9082908   0.8231988   1.0021785
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.8109580   0.7268693   0.9047746
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.7503417   0.5831055   0.9655418
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.3729730   0.8222475   2.2925636
0-6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          1                    0                 0.9536792   0.7474229   1.2168532
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.8687050   0.7496395   1.0066819
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0388994   0.7816335   1.3808416
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 0.9939611   0.9593860   1.0297823
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9130010   0.8597991   0.9694948
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.9182168   0.8455623   0.9971141
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.9076438   0.7234637   1.1387126
6-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          1                    0                 1.0359712   0.5874383   1.8269773
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 0.5747126   0.2266054   1.4575764
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1406367   0.7453726   1.7455058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2801205   0.5086675   3.2215712
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.8752313   0.5317988   1.4404507


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1796296   -0.0595047    0.4187640
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0256066   -0.1552321    0.1040190
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0479723   -0.1601757    0.0642312
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0998465   -0.2083865    0.0086935
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0486710   -0.1051944    0.2025365
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0139846   -0.0162583    0.0442275
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0492088   -0.1023738    0.0039562
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0898330   -0.1428073   -0.0368588
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0836401   -0.1662788   -0.0010014
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1716418   -0.0677857    0.4110693
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0248040   -0.1539341    0.1043261
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0857814   -0.1775631    0.0060003
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0244776   -0.1550298    0.2039850
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0050399   -0.0333697    0.0232899
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0640930   -0.1082542   -0.0199317
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0546839   -0.1116125    0.0022446
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0554973   -0.1907079    0.0797133
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0161290   -0.2390237    0.2712818
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0948718   -0.2780930    0.0883494
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0624169   -0.1328224    0.2576563
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0151820   -0.0357019    0.0660660
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0194280   -0.0967170    0.0578610


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.2852941   -0.2199966    0.5813066
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0434103   -0.2877141    0.1545444
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0825444   -0.2939145    0.0942968
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1669999   -0.3649382    0.0022341
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0778074   -0.2045160    0.2939578
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0162384   -0.0195148    0.0507378
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0904391   -0.1927222    0.0030726
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.2125964   -0.3447160   -0.0934577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.3006341   -0.6340695   -0.0352369
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.2555556   -0.2051932    0.5401588
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0389083   -0.2625863    0.1451433
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1094453   -0.2348561    0.0032289
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0347458   -0.2569309    0.2587375
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0056914   -0.0381984    0.0257978
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0857659   -0.1466825   -0.0280855
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0809885   -0.1687261    0.0001626
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0915975   -0.3393612    0.1103333
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0312500   -0.6139924    0.4185372
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.4625000   -1.6271554    0.1858471
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1126549   -0.3208304    0.4038740
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.2051471   -0.8882704    0.6654127
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1315759   -0.7969229    0.2874129
