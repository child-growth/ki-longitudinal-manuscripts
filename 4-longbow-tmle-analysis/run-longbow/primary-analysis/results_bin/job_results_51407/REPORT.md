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
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                     0     1110   13510
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                     1       31   13510
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0    11937   13510
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      432   13510
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     1454   26408
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                     1       36   26408
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    24010   26408
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      908   26408
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
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                     0     1125   13251
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                     1        4   13251
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                     0    11996   13251
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      126   13251
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                     0     1445   26158
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                     1       13   26158
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                     0    24279   26158
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                     1      421   26158
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
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                     0      877   10605
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                     1       27   10605
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     9385   10605
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      316   10605
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
![](/tmp/e319c9fa-8937-411c-aa93-8f5989087104/e38fa482-e709-486a-86d2-c45aae1130cb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e319c9fa-8937-411c-aa93-8f5989087104/e38fa482-e709-486a-86d2-c45aae1130cb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e319c9fa-8937-411c-aa93-8f5989087104/e38fa482-e709-486a-86d2-c45aae1130cb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e319c9fa-8937-411c-aa93-8f5989087104/e38fa482-e709-486a-86d2-c45aae1130cb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2000000    0.0429894   0.3570106
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1457726    0.1083773   0.1831679
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                0.2208187    0.1231693   0.3184680
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    NA                0.1832150    0.1419576   0.2244724
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0784196    0.0418398   0.1149995
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0485991    0.0394923   0.0577059
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                0.0144067    0.0079372   0.0208761
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    NA                0.0117204    0.0076686   0.0157722
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0239898    0.0151726   0.0328071
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0350795    0.0318301   0.0383289
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0227457    0.0143706   0.0311208
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0363994    0.0336967   0.0391020
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0337147    0.0123397   0.0550897
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0475058    0.0405213   0.0544903
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                0.1821528    0.0892045   0.2751010
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    NA                0.1394976    0.1016525   0.1773428
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0284360    0.0060039   0.0508681
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0168539    0.0113938   0.0223140
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                0.0114043    0.0059163   0.0168923
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    NA                0.0106021    0.0065858   0.0146185
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0087440    0.0038306   0.0136575
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0170436    0.0151312   0.0189560
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0585439    0.0242461   0.0928417
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0396829    0.0306900   0.0486757
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    NA                0.0031266   -0.0009905   0.0072437
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    NA                0.0013625    0.0007667   0.0019583
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0273200    0.0166933   0.0379467
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0326803    0.0291376   0.0362230
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0205447    0.0109442   0.0301451
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0327267    0.0297103   0.0357431
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0272483    0.0073044   0.0471923
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0456212    0.0385988   0.0526437


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1494565   0.1129794   0.1859337
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          NA                   NA                0.1882641   0.1503318   0.2261964
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0513800   0.0424616   0.0602985
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0120875   0.0084025   0.0157724
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0342709   0.0312031   0.0373387
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0357467   0.0331646   0.0383289
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0462325   0.0396215   0.0528435
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          NA                   NA                0.1461538   0.1110489   0.1812588
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0178952   0.0125307   0.0232597
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0107462   0.0070475   0.0144449
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0165915   0.0147743   0.0184087
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0415832   0.0328230   0.0503433
6-24 months                   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0015665   0.0007872   0.0023457
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0323432   0.0289761   0.0357104
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0319545   0.0290590   0.0348499
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0441242   0.0374527   0.0507956


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.7288630   0.3191248   1.664682
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    0                 0.8297080   0.5048505   1.363603
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6197314   0.3748780   1.024512
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    0                 0.8135431   0.4629180   1.429740
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.4622649   1.0010297   2.136019
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.6002750   1.1014206   2.325070
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.4090545   0.7327011   2.709747
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    0                 0.7658277   0.4294277   1.365753
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.5926966   0.2526208   1.390579
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    0                 0.9296605   0.5166731   1.672757
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.9491661   1.0962481   3.465683
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6778306   0.3616625   1.270395
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    0                 0.4357699   0.1200864   1.581323
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1962029   0.7988122   1.791286
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.5929550   0.9910521   2.560416
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.6742770   0.7936071   3.532231


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0505435   -0.2009875   0.0999006
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                -0.0325546   -0.1207163   0.0556071
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0270396   -0.0613523   0.0072732
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0023192   -0.0090654   0.0044270
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0102811    0.0016976   0.0188646
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0130010    0.0047280   0.0212741
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0125178   -0.0082370   0.0332727
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                -0.0359989   -0.1193137   0.0473159
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0105408   -0.0315527   0.0104710
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0006581   -0.0064347   0.0051185
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0078474    0.0028401   0.0128548
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0169607   -0.0492712   0.0153497
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0015602   -0.0051189   0.0019985
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0050232   -0.0052138   0.0152603
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0114098    0.0020482   0.0207714
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0168758   -0.0024862   0.0362379


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.3381818   -1.8354235   0.3684433
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                -0.1729199   -0.7478935   0.2129148
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5262661   -1.3549397   0.0108077
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                -0.1918686   -0.9405794   0.2679760
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.2999944    0.0007103   0.5096439
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.3636984    0.0868276   0.5566228
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2707578   -0.3481602   0.6055408
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                -0.2463083   -0.9665056   0.2101297
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5890318   -2.3006805   0.2349995
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0612385   -0.7756271   0.3657299
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.4729805    0.0791681   0.6983710
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4078751   -1.4384261   0.1871345
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    NA                -0.9959915   -4.3775882   0.2591508
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1553094   -0.2281657   0.4190505
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.3570645   -0.0132463   0.5920380
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3824625   -0.2546878   0.6960578
