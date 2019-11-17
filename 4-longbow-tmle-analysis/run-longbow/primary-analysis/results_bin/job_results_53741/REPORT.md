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

agecat                        studyid                    country                        vagbrth    ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0       20     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        5     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0      293     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       50     368
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                     0       55     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                     1       15     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                     0      277     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                     1       62     409
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                     0      158     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                     1        1     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                     0      510     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                     1       18     687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      198     496
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        4     496
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      284     496
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       10     496
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      195    2355
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       17    2355
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     2039    2355
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      104    2355
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                     0     1922   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                     1       28   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                     0    14751   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                     1      176   16877
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                     0     1110   13522
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                     1       32   13522
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0    11940   13522
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      440   13522
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     1454   26404
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                     1       36   26404
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    24005   26404
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      909   26404
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                     0      358    4499
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                     1       12    4499
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     3933    4499
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      196    4499
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                     0       20     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        3     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                     0      300     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       27     350
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                     0       55     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                     1       12     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                     0      278     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                     1       45     390
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                     0      157     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                     1        1     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                     0      520     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                     1        5     683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      202     493
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        0     493
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      291     493
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1        0     493
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      205    2347
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1        6    2347
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     2100    2347
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       36    2347
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                     0     1913   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                     1       22   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                     0    14565   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                     1      157   16657
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                     0     1125   13264
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                     1        4   13264
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                     0    12008   13264
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      127   13264
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                     0     1445   26154
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                     1       13   26154
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                     0    24274   26154
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                     1      422   26154
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                     0      356    4380
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                     1        2    4380
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                     0     4003    4380
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                     1       19    4380
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0       23     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        2     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0      320     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       28     373
6-24 months                   ki1000108-IRC              INDIA                          0                     0       66     410
6-24 months                   ki1000108-IRC              INDIA                          0                     1        4     410
6-24 months                   ki1000108-IRC              INDIA                          1                     0      318     410
6-24 months                   ki1000108-IRC              INDIA                          1                     1       22     410
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                     0      143     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                     1        0     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                     0      459     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                     1       13     615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      190     472
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        4     472
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      267     472
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       11     472
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      175    1996
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       11    1996
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1738    1996
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       72    1996
6-24 months                   ki1119695-PROBIT           BELARUS                        0                     0     1913   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        0                     1        6   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        1                     0    14659   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        1                     1       20   16598
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                     0      882   10723
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                     1       28   10723
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     9490   10723
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      323   10723
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     1090   17212
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                     1       23   17212
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    15572   17212
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      527   17212
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                     0      359    4510
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                     1       10    4510
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     3952    4510
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      189    4510


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




# Results Detail

## Results Plots
![](/tmp/8629685a-f327-4726-97a2-158456be599d/aedfb237-177c-4e4e-a254-e49fca6302e4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8629685a-f327-4726-97a2-158456be599d/aedfb237-177c-4e4e-a254-e49fca6302e4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8629685a-f327-4726-97a2-158456be599d/aedfb237-177c-4e4e-a254-e49fca6302e4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8629685a-f327-4726-97a2-158456be599d/aedfb237-177c-4e4e-a254-e49fca6302e4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2000000    0.0429894   0.3570106
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1457726    0.1083773   0.1831679
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                0.2200741    0.1236620   0.3164861
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    NA                0.1832290    0.1419969   0.2244612
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0792520    0.0424937   0.1160103
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0486167    0.0395064   0.0577271
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                0.0144261    0.0080682   0.0207839
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    NA                0.0117837    0.0077280   0.0158394
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0248623    0.0157649   0.0339597
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0357698    0.0324880   0.0390517
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0251162    0.0158319   0.0344006
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0364530    0.0337702   0.0391358
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0321949    0.0103668   0.0540230
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0474856    0.0405056   0.0544656
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                0.1942494    0.1015136   0.2869852
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    NA                0.1395581    0.1017568   0.1773594
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0284360    0.0060039   0.0508681
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0168539    0.0113938   0.0223140
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                0.0113077    0.0054587   0.0171566
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    NA                0.0106825    0.0066432   0.0147219
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0087403    0.0039128   0.0135678
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0170884    0.0151729   0.0190039
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0576558    0.0234710   0.0918406
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0397860    0.0307809   0.0487912
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    NA                0.0031266   -0.0009905   0.0072437
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    NA                0.0013625    0.0007667   0.0019583
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0276190    0.0169621   0.0382759
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0330428    0.0295021   0.0365834
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0202685    0.0105992   0.0299379
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0327152    0.0297007   0.0357297
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0275154    0.0075960   0.0474348
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0456546    0.0386316   0.0526777


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


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.7288630   0.3191248   1.664682
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    0                 0.8325790   0.5087585   1.362508
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6134448   0.3719899   1.011626
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    0                 0.8168336   0.4694024   1.421418
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.4387189   0.9866654   2.097886
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.4513733   0.9960469   2.114845
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.4749414   0.7341617   2.963179
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    0                 0.7184482   0.4144653   1.245382
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.5926966   0.2526208   1.390579
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    0                 0.9447129   0.5137692   1.737127
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.9551228   1.1100540   3.443531
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6900605   0.3658174   1.301697
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    0                 0.4357699   0.1200864   1.581323
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1963774   0.8016169   1.785540
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.6140891   0.9937834   2.621581
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.6592397   0.7926231   3.473374


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0505435   -0.2009875   0.0999006
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                -0.0318100   -0.1188350   0.0552149
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0278720   -0.0623755   0.0066315
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0023386   -0.0089498   0.0042726
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0100438    0.0011978   0.0188898
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0106738    0.0015435   0.0198041
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0140376   -0.0071739   0.0352491
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                -0.0480955   -0.1314659   0.0352749
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0105408   -0.0315527   0.0104710
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0005614   -0.0065618   0.0054389
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0078919    0.0029627   0.0128212
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0160727   -0.0481589   0.0160136
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0015602   -0.0051189   0.0019985
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0051144   -0.0051478   0.0153766
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0116859    0.0022414   0.0211305
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0166088   -0.0027282   0.0359458


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.3381818   -1.8354235    0.3684433
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                -0.1689649   -0.7356415    0.2126952
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5424670   -1.3749166   -0.0018055
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                -0.1934746   -0.9242049    0.2597557
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.2877377   -0.0150913    0.5002247
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2982345   -0.0082014    0.5115312
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3036301   -0.3446120    0.6393524
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                -0.3290746   -1.0412442    0.1346261
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5890318   -2.3006805    0.2349995
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0522458   -0.7999625    0.3848642
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.4744953    0.0903520    0.6964154
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.3865187   -1.4106252    0.2025164
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    NA                -0.9959915   -4.3775882    0.2591508
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1562434   -0.2230037    0.4178879
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.3657058   -0.0097994    0.6015751
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3764099   -0.2570596    0.6906553
