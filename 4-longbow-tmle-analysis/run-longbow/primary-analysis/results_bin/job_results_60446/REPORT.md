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

agecat                        studyid          country                        vagbrth    ever_wasted   n_cell       n
----------------------------  ---------------  -----------------------------  --------  ------------  -------  ------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    0       17     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    1        8     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                    0      185     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                    1      158     368
0-24 months (no birth wast)   IRC              INDIA                          0                    0       38     409
0-24 months (no birth wast)   IRC              INDIA                          0                    1       32     409
0-24 months (no birth wast)   IRC              INDIA                          1                    0      158     409
0-24 months (no birth wast)   IRC              INDIA                          1                    1      181     409
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    0     1301   26404
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    1      189   26404
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                    0    20624   26404
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                    1     4290   26404
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    0      291    4499
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    1       79    4499
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                    0     3007    4499
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                    1     1122    4499
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    0      181     496
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    1       21     496
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                    0      245     496
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                    1       49     496
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    0     1805   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    1      147   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        1                    0    13926   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        1                    1     1001   16879
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    0      132     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    1       27     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                    0      433     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                    1       95     687
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0      174    2355
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       38    2355
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0     1712    2355
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      431    2355
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    0     1042   13522
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    1      100   13522
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                    0    11104   13522
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                    1     1276   13522
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                    0       15     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                    1        8     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                    0      227     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                    1      100     350
0-6 months (no birth wast)    IRC              INDIA                          0                    0       42     390
0-6 months (no birth wast)    IRC              INDIA                          0                    1       25     390
0-6 months (no birth wast)    IRC              INDIA                          1                    0      215     390
0-6 months (no birth wast)    IRC              INDIA                          1                    1      108     390
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    0     1387   26154
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    1       71   26154
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                    0    22889   26154
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                    1     1807   26154
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                    0      347    4380
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                    1       11    4380
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                    0     3907    4380
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                    1      115    4380
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     0                    0      199     493
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     0                    1        3     493
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     1                    0      282     493
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     1                    1        9     493
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    0     1805   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    1      131   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        1                    0    13866   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        1                    1      891   16693
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    0      146     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    1       12     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                    0      500     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                    1       25     683
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0      198    2347
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       13    2347
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0     1947    2347
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      189    2347
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                    0     1107   13264
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                    1       22   13264
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       1                    0    11731   13264
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       1                    1      404   13264
6-24 months                   CMC-V-BCS-2002   INDIA                          0                    0       22     373
6-24 months                   CMC-V-BCS-2002   INDIA                          0                    1        3     373
6-24 months                   CMC-V-BCS-2002   INDIA                          1                    0      252     373
6-24 months                   CMC-V-BCS-2002   INDIA                          1                    1       96     373
6-24 months                   IRC              INDIA                          0                    0       57     410
6-24 months                   IRC              INDIA                          0                    1       13     410
6-24 months                   IRC              INDIA                          1                    0      226     410
6-24 months                   IRC              INDIA                          1                    1      114     410
6-24 months                   JiVitA-3         BANGLADESH                     0                    0      989   17212
6-24 months                   JiVitA-3         BANGLADESH                     0                    1      124   17212
6-24 months                   JiVitA-3         BANGLADESH                     1                    0    13399   17212
6-24 months                   JiVitA-3         BANGLADESH                     1                    1     2700   17212
6-24 months                   JiVitA-4         BANGLADESH                     0                    0      296    4510
6-24 months                   JiVitA-4         BANGLADESH                     0                    1       73    4510
6-24 months                   JiVitA-4         BANGLADESH                     1                    0     3079    4510
6-24 months                   JiVitA-4         BANGLADESH                     1                    1     1062    4510
6-24 months                   NIH-Crypto       BANGLADESH                     0                    0      176     472
6-24 months                   NIH-Crypto       BANGLADESH                     0                    1       18     472
6-24 months                   NIH-Crypto       BANGLADESH                     1                    0      232     472
6-24 months                   NIH-Crypto       BANGLADESH                     1                    1       46     472
6-24 months                   PROBIT           BELARUS                        0                    0     1901   16598
6-24 months                   PROBIT           BELARUS                        0                    1       18   16598
6-24 months                   PROBIT           BELARUS                        1                    0    14558   16598
6-24 months                   PROBIT           BELARUS                        1                    1      121   16598
6-24 months                   PROVIDE          BANGLADESH                     0                    0      124     615
6-24 months                   PROVIDE          BANGLADESH                     0                    1       19     615
6-24 months                   PROVIDE          BANGLADESH                     1                    0      392     615
6-24 months                   PROVIDE          BANGLADESH                     1                    1       80     615
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0      159    1996
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       27    1996
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0     1516    1996
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      294    1996
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    0      827   10723
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    1       83   10723
6-24 months                   ZVITAMBO         ZIMBABWE                       1                    0     8872   10723
6-24 months                   ZVITAMBO         ZIMBABWE                       1                    1      941   10723


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/a03e0b91-33d1-4295-bc2c-2839ac91766d/79c47b90-d5be-40ee-923e-7972ae7996d6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a03e0b91-33d1-4295-bc2c-2839ac91766d/79c47b90-d5be-40ee-923e-7972ae7996d6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a03e0b91-33d1-4295-bc2c-2839ac91766d/79c47b90-d5be-40ee-923e-7972ae7996d6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a03e0b91-33d1-4295-bc2c-2839ac91766d/79c47b90-d5be-40ee-923e-7972ae7996d6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    NA                0.3200000   0.1368958   0.5031042
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                    NA                0.4606414   0.4078197   0.5134631
0-24 months (no birth wast)   IRC              INDIA                          0                    NA                0.4530521   0.3342463   0.5718580
0-24 months (no birth wast)   IRC              INDIA                          1                    NA                0.5347416   0.4815861   0.5878971
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    NA                0.1530000   0.1299218   0.1760782
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                    NA                0.1714458   0.1659960   0.1768957
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    NA                0.2359412   0.1407688   0.3311137
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                    NA                0.2692086   0.2536427   0.2847744
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    NA                0.1018137   0.0592090   0.1444185
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                    NA                0.1655496   0.1228193   0.2082799
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    NA                0.0748557   0.0592484   0.0904631
0-24 months (no birth wast)   PROBIT           BELARUS                        1                    NA                0.0669884   0.0550230   0.0789537
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    NA                0.1705184   0.1120519   0.2289848
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                    NA                0.1789680   0.1462574   0.2116785
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1708811   0.1198598   0.2219025
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2007913   0.1838212   0.2177614
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    NA                0.0867884   0.0697619   0.1038148
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                    NA                0.1030559   0.0977000   0.1084119
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                    NA                0.3478261   0.1529008   0.5427514
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                    NA                0.3058104   0.2558000   0.3558208
0-6 months (no birth wast)    IRC              INDIA                          0                    NA                0.3626179   0.2458882   0.4793476
0-6 months (no birth wast)    IRC              INDIA                          1                    NA                0.3365352   0.2850057   0.3880646
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    NA                0.0497491   0.0352576   0.0642406
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                    NA                0.0728729   0.0691019   0.0766440
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                    NA                0.0294892   0.0011431   0.0578354
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                    NA                0.0286618   0.0233249   0.0339988
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    NA                0.0676399   0.0539411   0.0813387
0-6 months (no birth wast)    PROBIT           BELARUS                        1                    NA                0.0603961   0.0489031   0.0718891
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    NA                0.0711886   0.0295591   0.1128180
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                    NA                0.0471926   0.0289502   0.0654350
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0611480   0.0284715   0.0938245
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0884897   0.0764387   0.1005408
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                    NA                0.0172512   0.0098691   0.0246334
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       1                    NA                0.0332088   0.0300198   0.0363979
6-24 months                   IRC              INDIA                          0                    NA                0.1926847   0.0995480   0.2858213
6-24 months                   IRC              INDIA                          1                    NA                0.3333723   0.2831530   0.3835915
6-24 months                   JiVitA-3         BANGLADESH                     0                    NA                0.1390023   0.1121785   0.1658261
6-24 months                   JiVitA-3         BANGLADESH                     1                    NA                0.1665675   0.1602059   0.1729292
6-24 months                   JiVitA-4         BANGLADESH                     0                    NA                0.2238503   0.1310034   0.3166972
6-24 months                   JiVitA-4         BANGLADESH                     1                    NA                0.2543090   0.2390906   0.2695274
6-24 months                   NIH-Crypto       BANGLADESH                     0                    NA                0.1004180   0.0604300   0.1404061
6-24 months                   NIH-Crypto       BANGLADESH                     1                    NA                0.1725877   0.1287734   0.2164020
6-24 months                   PROBIT           BELARUS                        0                    NA                0.0092619   0.0015393   0.0169844
6-24 months                   PROBIT           BELARUS                        1                    NA                0.0082178   0.0041290   0.0123065
6-24 months                   PROVIDE          BANGLADESH                     0                    NA                0.1357174   0.0800106   0.1914242
6-24 months                   PROVIDE          BANGLADESH                     1                    NA                0.1698045   0.1359249   0.2036842
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1362076   0.0858221   0.1865931
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1634659   0.1463559   0.1805758
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    NA                0.0929933   0.0732097   0.1127769
6-24 months                   ZVITAMBO         ZIMBABWE                       1                    NA                0.0959672   0.0901329   0.1018016


### Parameter: E(Y)


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          NA                   NA                0.4510870   0.4001777   0.5019962
0-24 months (no birth wast)   IRC              INDIA                          NA                   NA                0.5207824   0.4723080   0.5692568
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     NA                   NA                0.1696334   0.1643208   0.1749460
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     NA                   NA                0.2669482   0.2519234   0.2819730
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     NA                   NA                0.1411290   0.1104588   0.1717993
0-24 months (no birth wast)   PROBIT           BELARUS                        NA                   NA                0.0680135   0.0562135   0.0798135
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1991507   0.1830179   0.2152836
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1017601   0.0966641   0.1068561
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          NA                   NA                0.3085714   0.2601110   0.3570318
0-6 months (no birth wast)    IRC              INDIA                          NA                   NA                0.3410256   0.2939169   0.3881343
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     NA                   NA                0.0718055   0.0681632   0.0754477
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     NA                   NA                0.0287671   0.0234680   0.0340662
0-6 months (no birth wast)    PROBIT           BELARUS                        NA                   NA                0.0612233   0.0502388   0.0722078
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     NA                   NA                0.0541728   0.0371844   0.0711612
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0860673   0.0747182   0.0974164
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0321170   0.0291164   0.0351176
6-24 months                   IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months                   JiVitA-3         BANGLADESH                     NA                   NA                0.1640716   0.1579211   0.1702221
6-24 months                   JiVitA-4         BANGLADESH                     NA                   NA                0.2516630   0.2368610   0.2664649
6-24 months                   NIH-Crypto       BANGLADESH                     NA                   NA                0.1355932   0.1046749   0.1665115
6-24 months                   PROBIT           BELARUS                        NA                   NA                0.0083745   0.0044130   0.0123360
6-24 months                   PROVIDE          BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1608216   0.1447012   0.1769421
6-24 months                   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0954957   0.0899327   0.1010586


### Parameter: RR


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                    0                 1.4395044   0.8030978   2.580225
0-24 months (no birth wast)   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   IRC              INDIA                          1                    0                 1.1803093   0.8915715   1.562556
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                    0                 1.1205611   0.9614185   1.306046
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                    0                 1.1409984   0.7596311   1.713828
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                    0                 1.6260044   0.9928414   2.662953
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   PROBIT           BELARUS                        1                    0                 0.8948999   0.7513216   1.065916
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                    0                 1.0495524   0.7112860   1.548688
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1750350   0.8616350   1.602427
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                    0                 1.1874398   0.9695618   1.454279
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                    0                 0.8792049   0.4904064   1.576246
0-6 months (no birth wast)    IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    IRC              INDIA                          1                    0                 0.9280711   0.6499586   1.325186
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                    0                 1.4648101   1.0930663   1.962981
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                    0                 0.9719413   0.3622486   2.607794
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    PROBIT           BELARUS                        1                    0                 0.8929067   0.7274447   1.096004
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                    0                 0.6629237   0.3287504   1.336782
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.4471398   0.8338138   2.511608
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       1                    0                 1.9250137   1.2416088   2.984578
6-24 months                   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   IRC              INDIA                          1                    0                 1.7301442   1.0448267   2.864971
6-24 months                   JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-3         BANGLADESH                     1                    0                 1.1983081   0.9864833   1.455617
6-24 months                   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-4         BANGLADESH                     1                    0                 1.1360673   0.7487350   1.723773
6-24 months                   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   NIH-Crypto       BANGLADESH                     1                    0                 1.7186925   1.0688037   2.763748
6-24 months                   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   PROBIT           BELARUS                        1                    0                 0.8872725   0.3830458   2.055244
6-24 months                   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   PROVIDE          BANGLADESH                     1                    0                 1.2511623   0.7924399   1.975427
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2001233   0.8171491   1.762587
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ZVITAMBO         ZIMBABWE                       1                    0                 1.0319801   0.8272467   1.287383


### Parameter: PAR


agecat                        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    NA                 0.1310870   -0.0465745   0.3087484
0-24 months (no birth wast)   IRC              INDIA                          0                    NA                 0.0677303   -0.0405961   0.1760567
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    NA                 0.0166334   -0.0059955   0.0392623
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    NA                 0.0310070   -0.0609984   0.1230124
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    NA                 0.0393153    0.0032676   0.0753630
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    NA                -0.0068422   -0.0182638   0.0045794
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    NA                 0.0070653   -0.0446214   0.0587520
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0282696   -0.0207796   0.0773189
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0149717   -0.0014721   0.0314156
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0392547   -0.2272721   0.1487628
0-6 months (no birth wast)    IRC              INDIA                          0                    NA                -0.0215923   -0.1273991   0.0842146
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    NA                 0.0220564    0.0079032   0.0362095
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                    NA                -0.0007221   -0.0274933   0.0260491
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    NA                -0.0064166   -0.0182352   0.0054020
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    NA                -0.0170158   -0.0520752   0.0180437
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0249193   -0.0068179   0.0566565
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0148658    0.0075403   0.0221913
6-24 months                   IRC              INDIA                          0                    NA                 0.1170714    0.0290875   0.2050553
6-24 months                   JiVitA-3         BANGLADESH                     0                    NA                 0.0250693   -0.0010033   0.0511419
6-24 months                   JiVitA-4         BANGLADESH                     0                    NA                 0.0278127   -0.0615787   0.1172041
6-24 months                   NIH-Crypto       BANGLADESH                     0                    NA                 0.0351752    0.0000773   0.0702731
6-24 months                   PROBIT           BELARUS                        0                    NA                -0.0008874   -0.0076275   0.0058528
6-24 months                   PROVIDE          BANGLADESH                     0                    NA                 0.0252582   -0.0248578   0.0753742
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0246141   -0.0238044   0.0730325
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0025024   -0.0165131   0.0215178


### Parameter: PAF


agecat                        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    NA                 0.2906024   -0.2363609   0.5929627
0-24 months (no birth wast)   IRC              INDIA                          0                    NA                 0.1300549   -0.1054177   0.3153678
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    NA                 0.0980549   -0.0456409   0.2220035
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    NA                 0.1161536   -0.3067320   0.4021846
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    NA                 0.2785769   -0.0215174   0.4905116
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    NA                -0.1006007   -0.2850262   0.0573562
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    NA                 0.0397860   -0.3000845   0.2908069
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1419509   -0.1430765   0.3559064
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    NA                 0.1471279   -0.0306485   0.2942396
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                    NA                -0.1272142   -0.9353750   0.3434803
0-6 months (no birth wast)    IRC              INDIA                          0                    NA                -0.0633157   -0.4235014   0.2057330
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    NA                 0.3071686    0.0790679   0.4787723
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                    NA                -0.0251024   -1.5388200   0.5860932
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    NA                -0.1048070   -0.3230052   0.0774046
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    NA                -0.3141023   -1.1334444   0.1905742
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2895328   -0.1910938   0.5762184
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                    NA                 0.4628633    0.1847516   0.6461007
6-24 months                   IRC              INDIA                          0                    NA                 0.3779471    0.0214115   0.6045838
6-24 months                   JiVitA-3         BANGLADESH                     0                    NA                 0.1527949   -0.0221609   0.2978048
6-24 months                   JiVitA-4         BANGLADESH                     0                    NA                 0.1105157   -0.3276644   0.4040795
6-24 months                   NIH-Crypto       BANGLADESH                     0                    NA                 0.2594170   -0.0370974   0.4711556
6-24 months                   PROBIT           BELARUS                        0                    NA                -0.1059586   -1.2958780   0.4672433
6-24 months                   PROVIDE          BANGLADESH                     0                    NA                 0.1569069   -0.2179799   0.4164058
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1530520   -0.2081143   0.4062475
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0262040   -0.1947367   0.2062864
