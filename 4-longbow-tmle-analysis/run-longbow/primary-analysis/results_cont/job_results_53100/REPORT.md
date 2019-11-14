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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        hdlvry    n_cell      n
----------  -------------------------  -----------------------------  -------  -------  -----
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0             86     86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              0     86
Birth       ki1000108-IRC              INDIA                          0            337    343
Birth       ki1000108-IRC              INDIA                          1              6    343
Birth       ki1000109-EE               PAKISTAN                       0            120    175
Birth       ki1000109-EE               PAKISTAN                       1             55    175
Birth       ki1000304b-SAS-CompFeed    INDIA                          0            108    957
Birth       ki1000304b-SAS-CompFeed    INDIA                          1            849    957
Birth       ki1017093b-PROVIDE         BANGLADESH                     0            387    532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1            145    532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0            548    707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1            159    707
Birth       ki1113344-GMS-Nepal        NEPAL                          0            143    596
Birth       ki1113344-GMS-Nepal        NEPAL                          1            453    596
Birth       ki1135781-COHORTS          INDIA                          0           2763   4389
Birth       ki1135781-COHORTS          INDIA                          1           1626   4389
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0             38    307
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            269    307
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0            500   2384
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1           1884   2384
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            357    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              8    365
6 months    ki1000108-IRC              INDIA                          0            400    408
6 months    ki1000108-IRC              INDIA                          1              8    408
6 months    ki1000109-EE               PAKISTAN                       0            252    373
6 months    ki1000109-EE               PAKISTAN                       1            121    373
6 months    ki1000304b-SAS-CompFeed    INDIA                          0            147   1088
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            941   1088
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             76    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1            304    380
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            450    603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            153    603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            554    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            161    715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1888   1920
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             32   1920
6 months    ki1113344-GMS-Nepal        NEPAL                          0            129    528
6 months    ki1113344-GMS-Nepal        NEPAL                          1            399    528
6 months    ki1135781-COHORTS          INDIA                          0           2896   4694
6 months    ki1135781-COHORTS          INDIA                          1           1798   4694
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0             39    334
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            295    334
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0           1082   4042
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2960   4042
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            361    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              8    369
24 months   ki1000108-IRC              INDIA                          0            401    409
24 months   ki1000108-IRC              INDIA                          1              8    409
24 months   ki1000109-EE               PAKISTAN                       0            112    167
24 months   ki1000109-EE               PAKISTAN                       1             55    167
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            433    579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            146    579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            391    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            123    514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      6
24 months   ki1113344-GMS-Nepal        NEPAL                          0            118    455
24 months   ki1113344-GMS-Nepal        NEPAL                          1            337    455
24 months   ki1135781-COHORTS          INDIA                          0           2214   3533
24 months   ki1135781-COHORTS          INDIA                          1           1319   3533
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             34    289
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            255    289
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           1032   3993
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2961   3993


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/da52163d-3680-4fc4-a223-97c522d5363e/a1f749b3-782e-4c90-bb39-6d8ac38eece6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/da52163d-3680-4fc4-a223-97c522d5363e/a1f749b3-782e-4c90-bb39-6d8ac38eece6/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/da52163d-3680-4fc4-a223-97c522d5363e/a1f749b3-782e-4c90-bb39-6d8ac38eece6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.9918991   -1.1804921   -0.8033061
Birth       ki1000108-IRC              INDIA                          1                    NA                -2.0600000   -3.2141159   -0.9058841
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -0.3061032   -0.5338048   -0.0784017
Birth       ki1000109-EE               PAKISTAN                       1                    NA                -0.4123884   -0.7687627   -0.0560141
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.6740938   -0.8050105   -0.5431772
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.6629343   -0.8796010   -0.4462675
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.2857107   -1.3771888   -1.1942327
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.3267824   -1.4704038   -1.1831610
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.1971464   -1.2907991   -1.1034937
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.3534903   -1.5386017   -1.1683789
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.1673666   -1.3577393   -0.9769939
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.1202420   -1.2226722   -1.0178117
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.9811443   -1.0281544   -0.9341342
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -1.0141588   -1.0767812   -0.9515364
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.7560963   -1.1156797   -0.3965129
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.8725363   -0.9944514   -0.7506212
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.6969283   -0.8334698   -0.5603867
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.6926391   -0.7476303   -0.6376480
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.5089262   -0.6640006   -0.3538519
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.3072917   -0.9616161    0.3470328
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.5926333   -0.7305001   -0.4547666
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.9137500   -1.5807163   -0.2467837
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.7255935   -0.8678762   -0.5833107
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -0.8533633   -1.0465153   -0.6602113
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.4164458   -0.5327295   -0.3001621
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.7045253   -0.8526779   -0.5563727
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.7968922   -1.0488667   -0.5449177
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -1.0711866   -1.2021539   -0.9402193
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1824150   -0.2784611   -0.0863689
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.2170994   -0.3835906   -0.0506083
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0620637   -0.0271521    0.1512794
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0718034   -0.2482064    0.1045997
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0681777    0.0131446    0.1232107
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1569649   -0.1420972    0.4560271
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.5063021   -0.6929931   -0.3196110
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.6222115   -0.7238960   -0.5205270
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.6593648   -0.7032943   -0.6154354
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.8108837   -0.8738972   -0.7478703
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.4964582   -0.8370789   -0.1558374
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6272715   -0.7368348   -0.5177082
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.2661144   -0.3454165   -0.1868123
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.4122350   -0.4630503   -0.3614197
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.5487673   -0.6500596   -0.4474751
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.3150000   -0.8468853    0.2168853
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.7384331   -0.8312559   -0.6456103
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.1158333   -1.4387631   -0.7929036
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.9718436   -1.1626052   -0.7810820
24 months   ki1000109-EE               PAKISTAN                       1                    NA                -1.0933288   -1.3167839   -0.8698737
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.8656133   -0.9606064   -0.7706203
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.9719575   -1.1377552   -0.8061598
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.5651444   -0.6753631   -0.4549256
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.7403770   -0.9197099   -0.5610440
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.1267858   -1.3226018   -0.9309699
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.1333887   -1.2393159   -1.0274614
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.5399030   -0.5843321   -0.4954740
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.8571447   -0.9183483   -0.7959412
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.0523336   -1.5535484   -0.5511189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3504913   -1.4941471   -1.2068355
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.1773444   -1.2474073   -1.1072814
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.2623531   -1.3015607   -1.2231454


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -0.3410000   -0.5302198   -0.1517802
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6570846   -0.8496671   -0.4645022
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1277349   -1.2174865   -1.0379833
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9755867   -1.0106993   -0.9404741
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.8643648   -0.9709313   -0.7577983
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.6907341   -0.7437042   -0.6377640
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5045068   -0.6566169   -0.3523968
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.7695800   -0.8839306   -0.6552294
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6734421   -0.8121314   -0.5347528
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0688763    0.0147308    0.1230218
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.5992551   -0.6878945   -0.5106156
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.7160077   -0.7492815   -0.6827338
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.6044910   -0.7122040   -0.4967781
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3760651   -0.4191017   -0.3330285
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5436992   -0.6434110   -0.4439874
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -1.0103892   -1.1580613   -0.8627171
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1238388   -1.2161263   -1.0315513
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6520577   -0.6860033   -0.6181122
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2989273   -1.4377964   -1.1600583
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2421463   -1.2763113   -1.2079812


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                 -1.0681009   -2.2375241    0.1013224
Birth       ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       1                    0                 -0.1062851   -0.5320877    0.3195174
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0111596   -0.2317793    0.2540984
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0410717   -0.2118961    0.1297527
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1563439   -0.3642369    0.0515491
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0471246   -0.1685453    0.2627946
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                 -0.0330145   -0.1112092    0.0451802
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.1164400   -0.5111289    0.2782488
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0042891   -0.1420342    0.1506124
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.2016346   -0.4708151    0.8740843
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 -0.3211167   -1.0021830    0.3599496
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 -0.1277698   -0.3680080    0.1124683
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.2880795   -0.4727301   -0.1034289
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.2742944   -0.5572864    0.0086976
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0346844   -0.2272050    0.1578361
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1338670   -0.3332658    0.0655317
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0887873   -0.2152682    0.3928428
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.1159094   -0.3297904    0.0979716
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.1515189   -0.2281673   -0.0748705
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.1308133   -0.4748608    0.2132342
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.1461205   -0.2383444   -0.0538967
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.2337673   -0.3076771    0.7752117
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.3774002   -0.7134057   -0.0413948
24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.1214852   -0.4156055    0.1726351
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1063442   -0.2966752    0.0839869
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1752326   -0.3864972    0.0360320
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0066028   -0.2294996    0.2162940
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.3172417   -0.3927419   -0.2417415
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.2981577   -0.7880538    0.1917385
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0850087   -0.1640462   -0.0059711


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.0186840   -0.0514705    0.0141025
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -0.0348968   -0.1672916    0.0974980
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0170092   -0.1942499    0.2282683
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0127479   -0.0591244    0.0336286
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0470050   -0.0947711    0.0007611
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0396317   -0.1260535    0.2053170
Birth       ki1135781-COHORTS          INDIA                          0                    NA                 0.0055576   -0.0249747    0.0360899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1082685   -0.4710806    0.2545435
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0061942   -0.1097454    0.1221337
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0044194   -0.0126632    0.0215020
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0062964   -0.0238639    0.0112711
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0439865   -0.1216122    0.0336392
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.2569963   -0.4195721   -0.0944205
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.2152657   -0.4468779    0.0163464
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0166757   -0.0651362    0.0317849
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0323014   -0.0770865    0.0124836
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0006986   -0.0066424    0.0080397
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0929530   -0.2573576    0.0714517
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0566428   -0.0864613   -0.0268244
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1080328   -0.4189006    0.2028350
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1099506   -0.1765633   -0.0433380
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0050681   -0.0089078    0.0190440
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0073819   -0.0171941    0.0024303
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0385456   -0.1349402    0.0578490
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0272537   -0.0752073    0.0206999
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0452058   -0.0968747    0.0064630
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0029470   -0.1666029    0.1724969
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.1121547   -0.1419230   -0.0823864
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.2465937   -0.6962712    0.2030838
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0648019   -0.1237135   -0.0058902
