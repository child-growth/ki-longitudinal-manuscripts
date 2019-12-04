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
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0     1130   13827
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1       40   13827
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0    12114   13827
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1      543   13827
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0     1402   26797
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1      111   26797
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0    23011   26797
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     2273   26797
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                0     1155   13732
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                1       10   13732
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0    12411   13732
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1      156   13732
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0     1439   26735
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1       71   26735
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0    24235   26735
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      990   26735
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
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0      880   10721
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1       30   10721
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0     9404   10721
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1      407   10721
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
![](/tmp/fd5b51d0-3b1b-4fa3-abdf-a11880600adb/a611c481-c901-4b80-8abc-8602418e59f5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fd5b51d0-3b1b-4fa3-abdf-a11880600adb/a611c481-c901-4b80-8abc-8602418e59f5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fd5b51d0-3b1b-4fa3-abdf-a11880600adb/a611c481-c901-4b80-8abc-8602418e59f5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fd5b51d0-3b1b-4fa3-abdf-a11880600adb/a611c481-c901-4b80-8abc-8602418e59f5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1359712   0.0520887   0.2198537
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1941594   0.1520310   0.2362878
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1053140   0.0575257   0.1531023
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1343968   0.1055759   0.1632177
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0783620   0.0424316   0.1142925
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1280910   0.0905676   0.1656143
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0424528   0.0153069   0.0695988
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0505800   0.0413259   0.0598342
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0334255   0.0227520   0.0440991
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0430546   0.0395160   0.0465931
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0844997   0.0663884   0.1026110
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0896820   0.0856569   0.0937072
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1103198   0.0740526   0.1465869
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1689941   0.1558796   0.1821085
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.1000000   0.0296358   0.1703642
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.0530973   0.0291989   0.0769957
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0312500   0.0042708   0.0582292
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0462963   0.0285609   0.0640317
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0079790   0.0029597   0.0129984
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0124746   0.0105297   0.0144194
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0544998   0.0389522   0.0700474
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0393769   0.0368397   0.0419142
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0436059   0.0192856   0.0679262
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0262898   0.0203479   0.0322317
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.0857143   0.0200549   0.1513737
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1705882   0.1305570   0.2106194
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0979673   0.0473399   0.1485947
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1293383   0.0990566   0.1596199
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0540305   0.0211386   0.0869224
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1194511   0.0807280   0.1581742
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0430108   0.0138471   0.0721744
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0574903   0.0467609   0.0682198
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0334173   0.0211453   0.0456894
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0415793   0.0376245   0.0455342
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0462866   0.0329775   0.0595957
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0897965   0.0848697   0.0947234
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0813684   0.0510466   0.1116902
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1544714   0.1420019   0.1669409


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1853659   0.1477057   0.2230261
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1040000   0.0772164   0.1307836
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0498521   0.0410826   0.0586217
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0421639   0.0388141   0.0455137
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0889652   0.0850582   0.0928722
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1643805   0.1517702   0.1769909
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0611247   0.0378797   0.0843697
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0120886   0.0102607   0.0139164
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0396858   0.0371902   0.0421814
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0277157   0.0217808   0.0336506
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1560976   0.1209228   0.1912723
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0953390   0.0688164   0.1218616
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0561404   0.0460367   0.0662440
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0407611   0.0370180   0.0445043
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0870071   0.0823429   0.0916713
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1485588   0.1367632   0.1603543


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          1                    0                 1.4279445   0.7432917   2.7432375
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2761533   0.7729758   2.1068801
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.6346050   0.9471893   2.8209077
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1914410   0.6126664   2.3169734
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2880741   0.9264199   1.7909102
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.0613301   0.8531582   1.3202963
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.5318565   1.0976550   2.1378159
0-6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          1                    0                 0.5309735   0.2303117   1.2241361
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.4814815   0.5761031   3.8097132
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.5634163   0.8177271   2.9891031
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.7225154   0.5405462   0.9657427
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.6028954   0.3353764   1.0838059
6-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          1                    0                 1.9901961   0.8932121   4.4344230
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.3202184   0.7488193   2.3276331
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 2.2108081   1.1083006   4.4100603
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.3366500   0.6615928   2.7005028
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2442447   0.8516001   1.8179247
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.9400118   1.4443076   2.6058478
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.8984200   1.2971951   2.7783012


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0493946   -0.0287507   0.1275399
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0232574   -0.0201618   0.0666767
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0256380   -0.0056177   0.0568936
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0073993   -0.0187121   0.0335107
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0087383   -0.0016014   0.0190781
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0044655   -0.0132680   0.0221990
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0540608    0.0193168   0.0888047
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0388753   -0.1004926   0.0227420
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0116071   -0.0133041   0.0365183
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0041095   -0.0007973   0.0090163
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0148140   -0.0298605   0.0002325
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0158902   -0.0384950   0.0067145
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0703833    0.0065372   0.1342293
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0241825   -0.0220298   0.0703948
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0413085    0.0111415   0.0714755
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0131296   -0.0150486   0.0413078
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0073438   -0.0045310   0.0192186
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0407205    0.0272102   0.0542308
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0671904    0.0371952   0.0971855


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.2664710   -0.3014001    0.5865493
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1808912   -0.2344757    0.4564986
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2465190   -0.1098752    0.4884707
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1484250   -0.5741345    0.5393151
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.2072470   -0.0795330    0.4178434
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0501939   -0.1715772    0.2299854
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3288756    0.0803855    0.5102210
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.6360000   -1.9871157    0.1039865
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.2708333   -0.6021007    0.6681332
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.3399510   -0.2150387    0.6414396
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.3732821   -0.8071307   -0.0435900
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.5733303   -1.6227780    0.0562037
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.4508929   -0.1352628    0.7344063
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1979742   -0.2822999    0.4983659
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.4332800    0.0397550    0.6655317
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2338709   -0.4720286    0.6012620
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1801671   -0.1691338    0.4251077
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.4680136    0.2922569    0.6001239
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.4522814    0.2122958    0.6191518
